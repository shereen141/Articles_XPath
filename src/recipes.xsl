<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>

	<xsl:template match="/">
		
		<html>
			<body style="background-color:#CFD8DC;">
			
				<center><h1> <xsl:value-of select="collection/description"/> </h1>		
				
					<xsl:for-each select="collection/recipe">				
						<h4><xsl:value-of select="./title"/></h4>
							<h4>Date:<xsl:value-of select="./date"/> </h4><br/>

	<table style="width:80%" border="solid">
	<tr>
	<th valign="top"><h4>Ingredients:</h4></th>
                <td>
                 <ul>
                <xsl:for-each select="ingredient">
                <li>
                 <xsl:value-of select="./@name" />, <xsl:value-of select="./@amount" />, <xsl:value-of select="./@unit" />
                 <ul >
                <xsl:for-each select="ingredient">
                 <li>
                 <xsl:value-of select="./@name" />, <xsl:value-of select="./@amount" /> <xsl:value-of select="./@unit" />
                 <ul>
                 <xsl:for-each select="ingredient">
                  <li>
                   <xsl:value-of select="./@name" /><xsl:value-of select="./@amount" /> <xsl:value-of select="./@unit" />
                   <ul>
                   <xsl:for-each select="ingredient">
                  <li>
                  <xsl:value-of select="./@name" /><xsl:value-of select="./@amount" /><xsl:value-of select="./@unit" />
                  </li>
                  </xsl:for-each>
                  </ul>
                  <ol>
         		<xsl:for-each select="preparation/step">
            			<li>
            		<xsl:value-of select="." />
              	</li>
        			 </xsl:for-each>
                  </ol>
             	 </li>
                 </xsl:for-each>
                 </ul>

                  <ol>
                  <xsl:for-each select="preparation/step">

                  <li>
               <xsl:value-of select="." />
                </li>


             </xsl:for-each>
              </ol>
            </li>
            </xsl:for-each>
            </ul>

            <ol>
           <xsl:for-each select="preparation/step">
           <li>
            <xsl:value-of select="." />
         </li>
        </xsl:for-each>
            </ol>
        </li>
 	   </xsl:for-each>
		</ul>
		</td></tr>
	
	<tr>
	<th valign="top"><h4>Method Of Preparation: </h4></th>
       <td>

	    <ul>
	    <xsl:for-each select="preparation/step">
		    <li> <xsl:value-of select="."/> </li>
	    </xsl:for-each>
	    </ul>
	
		<h4><b>Comments:</b></h4> <xsl:value-of select="comment"/> 
		<xsl:for-each select="nutrition"><br/>		
		<b><i>Protein % :</i> </b><xsl:value-of select="@protein"/> <br/>
		<b><i>Calories:</i> </b> <xsl:value-of select="@calories"/><br/>
		<b><i>Carbohydrates % :</i> </b><xsl:value-of select="@carbohydrates"/> <br/>
		<b><i>Fat % :</i> </b><xsl:value-of select="@fat"/>	<br/>
		</xsl:for-each>	 
		<p><b><i>Chef's Advice:</i></b> <xsl:value-of select="related"/></p>	
		</td></tr>	
		</table>				
		</xsl:for-each>
	
	</center>
			</body>		
		</html>

	</xsl:template>
</xsl:stylesheet>