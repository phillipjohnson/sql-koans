class SqlReader():
    def get_formatted_data(self, cursor, query):
        cursor.execute(query)
        rows = cursor.fetchall()

        if not cursor.description:
            return "Query executed successfully and did not return any data."

        columns = [description[0] for description in cursor.description]

        widths = self.determine_column_widths(columns, rows)

        headers = []
        for i, name in enumerate(columns):
            formatted = " {name: ^{fill}} ".format(name=name
                                                   , fill=widths[i])
            headers.append(formatted)

        header = "|".join(headers)

        data_rows = []
        data_rows.append(header)
        underline = "+".join(["-" * len(header) for header in headers])
        data_rows.append(underline)

        data_rows.extend(self.get_data_rows(columns, rows, widths))

        return "\n".join(data_rows)

    def determine_column_widths(self, columns, rows):
        widths = [len(column) + 2 for column in columns]

        for row in rows:
            for i in range(len(columns)):
                width = len(str(row[i]))
                if width > widths[i]:
                    widths[i] = width

        return widths

    def get_data_rows(self, columns, rows, widths):
        data_rows = []
        for row in rows:
            data = []
            for i in range(len(columns)):
                formatted = " {val: <{fill}} ".format(val=str(row[i])
                                                      , fill=widths[i])
                data.append(formatted)
            data_row = "|".join(data)
            data_rows.append(data_row)

        return data_rows
