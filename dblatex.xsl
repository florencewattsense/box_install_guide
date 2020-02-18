<!--
  Generates single FO document from DocBook XML source using DocBook XSL
  stylesheets.

  See xsl-stylesheets/fo/param.xsl for all parameters.

  NOTE: The URL reference to the current DocBook XSL stylesheets is
  rewritten to point to the copy on the local disk drive by the XML catalog
  rewrite directives so it doesn't need to go out to the Internet for the
  stylesheets. This means you don't need to edit the <xsl:import> elements on
  a machine by machine basis.
-->
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">
<!--
<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/fo/docbook.xsl"/>
-->

<!-- hide unused sections: collaboratos and revision history -->
<xsl:param name="doc.collab.show">0</xsl:param>
<xsl:param name="doc.publisher.show">0</xsl:param>
<xsl:param name="latex.output.revhistory">0</xsl:param>

<!-- style of links and table of content links -->
<xsl:param name="latex.hyperparam">colorlinks,linkcolor=blue,linktoc=all</xsl:param>

</xsl:stylesheet>
