<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <body>
                <h2>Cars</h2>
                <table border = "1">
                    <tr bgcolor = "#e60000">
                        <th>ID</th>
                        <th>Manufacturer</th>
                        <th>Model</th>
                        <th>Year</th>
                        <th>Engine</th>
                        <th>Gear</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select = "cars/car">
                        <tr>
                            <td><xsl:value-of select = "@id"/></td>
                            <td><xsl:value-of select = "manufacturer"/></td>
                            <td><xsl:value-of select = "model"/></td>
                            <td><xsl:value-of select = "year"/></td>
                            <td><xsl:value-of select = "engine"/></td>
                            <td><xsl:value-of select = "gear"/></td>
                            <td><xsl:value-of select = "price"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
