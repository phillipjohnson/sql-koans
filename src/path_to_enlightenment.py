import sqlreader
import sqltestutils

import re
import sqlite3

def main():
    temples = ['basics.sql',
                'filtering.sql',
                'joins.sql']
    queries = []
    solutions = {}
    
    for temple in temples:
        queries.extend(load_queries(temple))
        solutions.update(load_solutions(temple))
    climb_mountain(queries, solutions)

mountain_regex = "(--[\w\ \-\)\(,!=\"\':<>%]*)"

def load_queries(filename):
    with open('koans/solutions/' + filename) as f:
        text = f.read()
        separated = re.split(mountain_regex, text)
        del separated[0] # To remove first empty string
        zipped = zip(separated[0::2], separated[1::2])
        return [(filename, tup[0], tup[1]) for tup in zipped]

def load_solutions(filename):
    with open('koans/solutions/' + filename) as f:
        text = f.read()
        separated = re.split(mountain_regex, text)
        del separated[0] # To remove first empty string
        grouped = zip(separated[0::2], separated[1::2])
        return {k:v for k,v in grouped}

def refresh_tables(cursor):
    with open('db/library.sql') as sql_file:
        sql = sql_file.read()
        cursor.executescript(sql)

def climb_mountain(queries, solutions):
    reader = sqlreader.SqlReader()
    for temple, koan, query in queries:
        conn = sqlite3.connect(":memory:")
        refresh_tables(conn.cursor())
        test = sqltestutils.SqlTest(conn, koan, query, solutions[koan])
        try:
            test.run()
            print('{} has expanded your awareness.'.format(koan[3:]))
            print("Awareness expander:\n===================\n{}\n".format(
                test.test_result))
            print()
        except AssertionError:
            print('A koan has damaged your karma! Your query is incorrect.')
            print("Karma damager:\n\nEXPECTED RESULT\n===============")
            print(test.expected_result)
            print("\nACTUAL RESULT\n=============")
            print(test.test_result)
            print("{} in {}.".format(koan[3:], temple))
            break
        except sqlite3.Error as sql_error:
            print('A koan has damaged your karma! Your SQL is invald.')
            print("Karma-damager: {}".format(sql_error))
            print("{} in {}.".format(koan[3:], temple))
            break
        finally:
            conn.close()


if __name__=="__main__":
    main()
