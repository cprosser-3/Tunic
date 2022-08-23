<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/text">
    <table>

        <!-- PAGES -->
        <xsl:for-each select="page">
            <xsl:variable name="Page" select="@number"/>

            <!-- PARAGRAPHS -->
            <xsl:for-each select="paragraph">
                <xsl:variable name="Paragraph" select="position() - 1"/>
                <xsl:variable name="ParagraphType" select="@type"/>
                <xsl:variable name="ParagraphReference" select="@reference"/>

                <!-- SENTENCES -->
                <xsl:for-each select="sentence">
                    <xsl:variable name="Sentence" select="position() - 1"/>
                    <xsl:variable name="SentenceType" select="@type"/>
                    <xsl:variable name="SentenceEndmark" select="@endmark"/>

                    <!-- FRAGMENTS -->
                    <xsl:for-each select="fragment">
                        <xsl:variable name="Fragment" select="position() - 1"/>
                        <xsl:variable name="FragmentSeparator" select="@separator"/>

                        <!-- TERMS -->
                        <xsl:for-each select="term">
                            <xsl:variable name="Term" select="position() - 1"/>
                            <xsl:variable name="TermType" select="@type"/>
                            
                            <!-- ROWS -->
                            <tr>
                                <Page>
                                    <xsl:value-of select="$Page"/>
                                </Page>
                            
                                <Paragraph>
                                    <xsl:value-of select="$Paragraph"/>
                                </Paragraph>

                                <Sentence>
                                    <xsl:value-of select="$Sentence"/>
                                </Sentence>

                                <Fragment>
                                    <xsl:value-of select="$Fragment"/>
                                </Fragment>

                                <Term>
                                    <xsl:value-of select="$Term"/>
                                </Term>

                                <ParagraphType>
                                    <xsl:value-of select="$ParagraphType"/>
                                </ParagraphType>
                            
                                <ParagraphReference>
                                    <xsl:value-of select="$ParagraphReference"/>
                                </ParagraphReference>

                                <SentenceType>
                                    <xsl:value-of select="$SentenceType"/>
                                </SentenceType>

                                <SentenceEndmark>
                                    <xsl:value-of select="$SentenceEndmark"/>
                                </SentenceEndmark>

                                <FragmentSeparator>
                                    <xsl:value-of select="$FragmentSeparator"/>
                                </FragmentSeparator>

                                <TermType>
                                    <xsl:value-of select="$TermType"/>
                                </TermType>

                                <TermText>
                                    <xsl:value-of select="."/>
                                </TermText>
                            </tr>

                        </xsl:for-each>

                    </xsl:for-each>

                </xsl:for-each>

            </xsl:for-each>

        </xsl:for-each>

    </table>
  </xsl:template>       
        
</xsl:stylesheet>