import sqlreader


class SqlTest():
    def __init__(self, conn, name, test_query, expected_query):
        self.conn = conn
        self.name = name
        self.test_query = test_query
        self.expected_query = expected_query

    def run(self):
        c = self.conn.cursor()
        reader = sqlreader.SqlReader()
        self.test_result = reader.get_formatted_data(c, self.test_query)
        self.expected_result = reader.get_formatted_data(c, self.expected_query)

        assert self.test_result == self.expected_result
