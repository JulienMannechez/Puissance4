<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.3 of 28 juillet 2017 on 9 mai 2018 at 19:22:29</time-stamp>


<component-created>
<name>Puissance4_Mannechez_Morvillez</name> <type>package</type>
</component-created><!-- Package Puissance4_Mannechez_Morvillez* -->


<component-property>
<name>Puissance4_Mannechez_Morvillez</name> <type>package</type>
<property>packageName</property> <value>'Puissance4_Mannechez_Morvillez'</value>
</component-property>

<component-property>
<name>Puissance4_Mannechez_Morvillez</name> <type>package</type>
<property>parcelName</property> <value>'Puissance4_Mannechez_Morvillez'</value>
</component-property>

<class>
<name>Puissance4Controller</name>
<environment>Smalltalk</environment>
<super>UI.Controller</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>pressed selected </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Puissance4_Mannechez_Morvillez</package>
</attributes>
</class>

<class>
<name>UIPuissance4</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>laVue lePoint leJoueur listHisto processMove </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Puissance4_Mannechez_Morvillez</package>
</attributes>
</class>

<class>
<name>Puissance4View</name>
<environment>Smalltalk</environment>
<super>UI.View</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Puissance4_Mannechez_Morvillez</package>
</attributes>
</class>

<class>
<name>Puissance4Model</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>grille position joueur lesPieces historique doPlay </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Puissance4_Mannechez_Morvillez</package>
</attributes>
</class>

<methods>
<class-id>Puissance4Model class</class-id> <category>instance creation</category>

<body package="Puissance4_Mannechez_Morvillez" selector="testPiece">testPiece

<body package="Puissance4_Mannechez_Morvillez" selector="testGrille">testGrille

<body package="Puissance4_Mannechez_Morvillez" selector="testPieceJaune">testPieceJaune

<body package="Puissance4_Mannechez_Morvillez" selector="testPieceRouge">testPieceRouge

<body package="Puissance4_Mannechez_Morvillez" selector="new">new
</methods>


<methods>
<class-id>Puissance4Model</class-id> <category>utilities</category>

<body package="Puissance4_Mannechez_Morvillez" selector="detectPosValide:">detectPosValide: pos

<body package="Puissance4_Mannechez_Morvillez" selector="isWining:pos:">isWining: player pos: aPoint 
</methods>

<methods>
<class-id>Puissance4Model</class-id> <category>accessing</category>

<body package="Puissance4_Mannechez_Morvillez" selector="lesPieces">lesPieces

<body package="Puissance4_Mannechez_Morvillez" selector="dimension">dimension

<body package="Puissance4_Mannechez_Morvillez" selector="lesPieces:">lesPieces: anObject 

<body package="Puissance4_Mannechez_Morvillez" selector="position:">position: anObject 

<body package="Puissance4_Mannechez_Morvillez" selector="historique">historique

<body package="Puissance4_Mannechez_Morvillez" selector="doPlay:">doPlay: anObject

<body package="Puissance4_Mannechez_Morvillez" selector="grille">grille

<body package="Puissance4_Mannechez_Morvillez" selector="doPlay">doPlay

<body package="Puissance4_Mannechez_Morvillez" selector="joueur">joueur

<body package="Puissance4_Mannechez_Morvillez" selector="joueur:">joueur: anObject 

<body package="Puissance4_Mannechez_Morvillez" selector="historique:">historique: anObject 

<body package="Puissance4_Mannechez_Morvillez" selector="position">position

<body package="Puissance4_Mannechez_Morvillez" selector="grille:">grille: anObject 
</methods>

<methods>
<class-id>Puissance4Model</class-id> <category>initialize-release</category>

<body package="Puissance4_Mannechez_Morvillez" selector="initialize">initialize
</methods>


<methods>
<class-id>Puissance4Controller</class-id> <category>events</category>

<body package="Puissance4_Mannechez_Morvillez" selector="mouseMovedEvent:">mouseMovedEvent: aPoint 

<body package="Puissance4_Mannechez_Morvillez" selector="redButtonPressedEvent:">redButtonPressedEvent: anEvent 
</methods>

<methods>
<class-id>Puissance4Controller</class-id> <category>accessing</category>

<body package="Puissance4_Mannechez_Morvillez" selector="selected:">selected: anObject 

<body package="Puissance4_Mannechez_Morvillez" selector="pressed:">pressed: anObject 

<body package="Puissance4_Mannechez_Morvillez" selector="pressed">pressed

<body package="Puissance4_Mannechez_Morvillez" selector="selected">selected
</methods>

<methods>
<class-id>Puissance4Controller</class-id> <category>initialize-release</category>

<body package="Puissance4_Mannechez_Morvillez" selector="initialize">initialize
</methods>


<methods>
<class-id>UIPuissance4 class</class-id> <category>interface specs</category>

<body package="Puissance4_Mannechez_Morvillez" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>UIPuissance4</class-id> <category>accessing</category>

<body package="Puissance4_Mannechez_Morvillez" selector="laVue">laVue

<body package="Puissance4_Mannechez_Morvillez" selector="processMove">processMove

<body package="Puissance4_Mannechez_Morvillez" selector="processMove:">processMove: anObject 

<body package="Puissance4_Mannechez_Morvillez" selector="laVue:">laVue: anObject 
</methods>

<methods>
<class-id>UIPuissance4</class-id> <category>changing</category>

<body package="Puissance4_Mannechez_Morvillez" selector="changeGrille">changeGrille

<body package="Puissance4_Mannechez_Morvillez" selector="changeJoueur">changeJoueur
</methods>

<methods>
<class-id>UIPuissance4</class-id> <category>actions</category>

<body package="Puissance4_Mannechez_Morvillez" selector="processusStop">processusStop

<body package="Puissance4_Mannechez_Morvillez" selector="downPiece">downPiece

<body package="Puissance4_Mannechez_Morvillez" selector="processusStart">processusStart
</methods>

<methods>
<class-id>UIPuissance4</class-id> <category>interface opening</category>

<body package="Puissance4_Mannechez_Morvillez" selector="postOpenWith:">postOpenWith: spec 
</methods>

<methods>
<class-id>UIPuissance4</class-id> <category>initialize-release</category>

<body package="Puissance4_Mannechez_Morvillez" selector="initialize">initialize
</methods>

<methods>
<class-id>UIPuissance4</class-id> <category>aspects</category>

<body package="Puissance4_Mannechez_Morvillez" selector="leJoueur">leJoueur

<body package="Puissance4_Mannechez_Morvillez" selector="lePoint">lePoint

<body package="Puissance4_Mannechez_Morvillez" selector="listHisto">listHisto
</methods>


<methods>
<class-id>Puissance4View</class-id> <category>controller accessing</category>

<body package="Puissance4_Mannechez_Morvillez" selector="defaultControllerClass">defaultControllerClass
</methods>

<methods>
<class-id>Puissance4View</class-id> <category>displaying</category>

<body package="Puissance4_Mannechez_Morvillez" selector="displayOn:">displayOn: aGC 
</methods>

<methods>
<class-id>Puissance4View</class-id> <category>initialize-release</category>

<body package="Puissance4_Mannechez_Morvillez" selector="initialize">initialize
</methods>



</st-source>