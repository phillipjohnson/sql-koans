import sqlreader
import sqltestutils

import re
import sqlite3

def main():
    queries = load_queries()
    solutions = load_solutions()

    climb_mountain(queries, solutions)

mountain_regex = "(--[\w\ \-\)\(,!=\"\':<>%]*)"

def load_queries():
    with open('koans/solutions/basics.sql') as f:
        text = f.read()
        separated = re.split(mountain_regex, text)
        del separated[0] # To remove first empty string
        return zip(separated[0::2], separated[1::2])

def load_solutions():
    with open('koans/solutions/basics.sql') as f:
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
    for name, query in queries:
        conn = sqlite3.connect(":memory:")
        refresh_tables(conn.cursor())
        test = sqltestutils.SqlTest(conn, name, query, solutions[name])
        try:
            test.run()
            print('{} has expanded your awareness.'.format(name))
            print("Awareness expander:\n===================\n{}\n".format(
                test.test_result))
            print()
        except AssertionError:
            print('{} has damaged your karma. Your query is incorrect.'.format(name))
            print("Karma damager:\n\nEXPECTED RESULT\n===============")
            print(test.expected_result)
            print("\nACTUAL RESULT\n=============")
            print(test.test_result)
            break
        except sqlite3.Error as sql_error:
            print('{} has damaged your karma. Your SQL is invald.'.format(name))
            print("Karma-damager: {}".format(sql_error))
            break
        finally:
            conn.close()


if __name__=="__main__":
    main()
