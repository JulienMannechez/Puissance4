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

<body package="Puissance4_Mannechez_Morvillez" selector="testPiece">testPiece	"	***This is decompiled code.*** 	No source was available"	^Circle center: 20 @ 20 radius: 20</body>

<body package="Puissance4_Mannechez_Morvillez" selector="testGrille">testGrille	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an incorrect position in 	the file. The file may have been modified after this method was updated."	| n grille monModele |	n := 7.	grille := (Array new: n )				collect: [:t4 | Array new: n ].	(monModele := self new) grille: grille.	monModele position: n  / 2 @ (n  / 2).	monModele lesPieces add: Puissance4Model testPieceRouge.	^monModele</body>

<body package="Puissance4_Mannechez_Morvillez" selector="testPieceJaune">testPieceJaune	"	***This is decompiled code.*** 	No source was available"	| circle pieceJaune pos |	circle := self testPiece.	pos := nil.	pieceJaune := Array				with: circle				with: ColorValue yellow				with: #filled				with: pos.	^pieceJaune</body>

<body package="Puissance4_Mannechez_Morvillez" selector="testPieceRouge">testPieceRouge	"	***This is decompiled code.*** 	No source was available"	| circle pieceRouge pos |	circle := self testPiece.	pos := nil.	pieceRouge := Array				with: circle				with: ColorValue red				with: #filled				with: pos.	^pieceRouge.</body>

<body package="Puissance4_Mannechez_Morvillez" selector="new">new	"	***This is decompiled code.*** 	No source was available"	^super new initialize</body>
</methods>


<methods>
<class-id>Puissance4Model</class-id> <category>utilities</category>

<body package="Puissance4_Mannechez_Morvillez" selector="detectPosValide:">detectPosValide: pos"Renvoie 1 si pos est déjà une position existante dans le tableau historique"	| res oldpos monHistorique compteur lenght |	(monHistorique := self historique) isNil		ifTrue: [res := nil]		ifFalse: 			[compteur := 1.			lenght := monHistorique size.			[compteur &lt;= lenght]				whileTrue: 					[monHistorique						do: 							[:piece | 							(oldpos := piece at: 4) = pos ifTrue: [res := 1. ^res ].							res := nil].					compteur := compteur + 1]].	^res</body>

<body package="Puissance4_Mannechez_Morvillez" selector="isWining:pos:">isWining: player pos: aPoint "Renvoie 1 si pos est déjà une position existante avec la même couleur dans le tableau historique"	| res oldpos oldplayer monHistorique compteur lenght |	(monHistorique := self historique) isEmpty		ifTrue: [res := nil]		ifFalse: 			[compteur := 1.			lenght := monHistorique size.			[compteur &lt;= lenght]				whileTrue: 					[monHistorique						do: 							[:piece | 							oldpos := piece at: 4.							oldplayer := piece at: 2.							oldpos = aPoint &amp; (oldplayer = player) ifTrue: [res := 1. ^res.].							res := nil].				compteur := compteur + 1]].	^res</body>
</methods>

<methods>
<class-id>Puissance4Model</class-id> <category>accessing</category>

<body package="Puissance4_Mannechez_Morvillez" selector="lesPieces">lesPieces	^lesPieces</body>

<body package="Puissance4_Mannechez_Morvillez" selector="dimension">dimension	^self grille size @ self grille size</body>

<body package="Puissance4_Mannechez_Morvillez" selector="lesPieces:">lesPieces: anObject 	lesPieces := anObject.	^self</body>

<body package="Puissance4_Mannechez_Morvillez" selector="position:">position: anObject 	position := anObject.	^self</body>

<body package="Puissance4_Mannechez_Morvillez" selector="historique">historique	^historique</body>

<body package="Puissance4_Mannechez_Morvillez" selector="doPlay:">doPlay: anObject	doPlay := anObject.	^self</body>

<body package="Puissance4_Mannechez_Morvillez" selector="grille">grille	^grille</body>

<body package="Puissance4_Mannechez_Morvillez" selector="doPlay">doPlay	^doPlay</body>

<body package="Puissance4_Mannechez_Morvillez" selector="joueur">joueur	^joueur</body>

<body package="Puissance4_Mannechez_Morvillez" selector="joueur:">joueur: anObject 	joueur := anObject.	^self</body>

<body package="Puissance4_Mannechez_Morvillez" selector="historique:">historique: anObject 	historique := anObject.	^self</body>

<body package="Puissance4_Mannechez_Morvillez" selector="position">position	^position</body>

<body package="Puissance4_Mannechez_Morvillez" selector="grille:">grille: anObject 	grille := anObject.	^self</body>
</methods>

<methods>
<class-id>Puissance4Model</class-id> <category>initialize-release</category>

<body package="Puissance4_Mannechez_Morvillez" selector="initialize">initialize	super initialize.	grille := nil.	position := nil.	lesPieces := OrderedCollection new.	historique := OrderedCollection new.	joueur := 1.	doPlay := false.	^self</body>
</methods>


<methods>
<class-id>Puissance4Controller</class-id> <category>events</category>

<body package="Puissance4_Mannechez_Morvillez" selector="mouseMovedEvent:">mouseMovedEvent: aPoint 	| mousePoint bounds dimension monModele carreWidth mouseX mouseY |	self selected		ifTrue: 			[mousePoint := self sensor cursorPointFor: aPoint.			bounds := self view bounds.			dimension := (monModele := self model value) dimension.			carreWidth := bounds width / dimension x.			mouseX := mousePoint x / carreWidth.			mouseY := mousePoint y / carreWidth.			monModele position: mouseX truncated @ mouseY truncated.			self model value: monModele].	^self</body>

<body package="Puissance4_Mannechez_Morvillez" selector="redButtonPressedEvent:">redButtonPressedEvent: anEvent 	| isWining pos monModele laPiece joueurNum mousePoint bounds mouseX mouseY carreWidth dimension monHistorique resultatValide |	self pressed: true.	self pressed		ifTrue: 			[mousePoint := self sensor cursorPointFor: anEvent.			bounds := self view bounds.			dimension := (monModele := self model value) dimension.			carreWidth := bounds width / dimension x.			mouseX := mousePoint x / carreWidth.			mouseY := mousePoint y / carreWidth.			mouseX := mouseX truncated.			mouseY := mouseY truncated.			monModele position: mouseX @ mouseY.			monHistorique := monModele historique.			monModele joueur: monModele joueur + 1.			laPiece := monModele lesPieces.			monHistorique := monModele historique.			resultatValide := monModele detectPosValide: mouseX @ 0.			(joueurNum := monModele joueur) \\ 2 = 0 ifTrue: [resultatValide					ifNil: 						[						laPiece do: [:piece | piece at: 4 put: mouseX @ 0].						monHistorique add: (laPiece at: 1).						laPiece remove: (laPiece at: 1).						laPiece add: Puissance4Model testPieceJaune]					ifNotNil: [Dialog warn: 'Emplacement déjà occupé']].			monHistorique				do: 					[:piece | 					pos := piece at: 4.					"balayage horizontale"					(isWining := self model value isWining: ColorValue red pos: pos x @ pos y) ifNotNil: [(isWining := self model value isWining: ColorValue red pos: pos x + 1 @ pos y) ifNotNil: [(isWining := self model value isWining: ColorValue red pos: pos x + 2 @ pos y) ifNotNil: [(isWining := self model value isWining: ColorValue red pos: pos x + 3 @ pos y)									ifNotNil: 										[Dialog warn: 'Les rouges ont déjà gagnés. Veuillez recommencer'.										self model value doPlay: false]]]].					"balayage verticale"										(isWining := self model value isWining: ColorValue red pos: pos x @ pos y) ifNotNil: [(isWining := self model value isWining: ColorValue red pos: pos x - 1 @ pos y + 1) ifNotNil: [(isWining := self model value isWining: ColorValue red pos: pos x - 2 @ pos y + 2) ifNotNil: [(isWining := self model value isWining: ColorValue red pos: pos x - 3 @ pos y + 3)									ifNotNil: 										[Dialog warn: 'Les rouges ont déjà gagnés. Veuillez recommencer'.										self model value doPlay: false]]]].					"balayage diagonale, bas droite -&gt; haut gauche"					(isWining := self model value isWining: ColorValue red pos: pos x @ pos y) ifNotNil: [(isWining := self model value isWining: ColorValue red pos: pos x @ pos y + 1) ifNotNil: [(isWining := self model value isWining: ColorValue red pos: pos x @ pos y + 2) ifNotNil: [(isWining := self model value isWining: ColorValue red pos: pos x @ pos y + 3)									ifNotNil: 										[Dialog warn: 'Les rouges ont déjà gagnés. Veuillez recommencer'.										self model value doPlay: false]]]].					"balayage diagonale, bas gauche -&gt; haut droite"					(isWining := self model value isWining: ColorValue red pos: pos x @ pos y) ifNotNil: [(isWining := self model value isWining: ColorValue red pos: pos x - 2 @ pos y + 1) ifNotNil: [(isWining := self model value isWining: ColorValue red pos: pos x - 4 @ pos y + 2) ifNotNil: [(isWining := self model value isWining: ColorValue red pos: pos x - 6 @ pos y + 3)									ifNotNil: 										[Dialog warn: 'Les rouges ont déjà gagnés. Veuillez recommencer.'.										self model value doPlay: false]]]]]].	self pressed: true.	self pressed		ifTrue: 			[joueurNum \\ 2 = 0 ifFalse: [resultatValide					ifNil: 						[						laPiece do: [:piece | piece at: 4 put: mouseX @ 0].						monHistorique add: (laPiece at: 1).						laPiece remove: (laPiece at: 1).						laPiece add: Puissance4Model testPieceRouge]					ifNotNil: [Dialog warn: 'Emplacement déjà occupé']].			monHistorique				do: 					[:piece | 					pos := piece at: 4.					"balayage horizontale"					(isWining := self model value isWining: ColorValue yellow pos: pos x @ pos y) ifNotNil: [(isWining := self model value isWining: ColorValue yellow pos: pos x + 1 @ pos y) ifNotNil: [(isWining := self model value isWining: ColorValue yellow pos: pos x + 2 @ pos y) ifNotNil: [(isWining := self model value isWining: ColorValue yellow pos: pos x + 3 @ pos y)									ifNotNil: 										[Dialog warn: 'Les jaunes ont déjà gagnés. Veuillez recommencer.'.										self model value doPlay: false]]]].					"balayage verticale"					(isWining := self model value isWining: ColorValue yellow pos: pos x @ pos y) ifNotNil: [(isWining := self model value isWining: ColorValue yellow pos: pos x - 1 @ pos y + 1) ifNotNil: [(isWining := self model value isWining: ColorValue yellow pos: pos x - 2 @ pos y + 2) ifNotNil: [(isWining := self model value isWining: ColorValue yellow pos: pos x - 3 @ pos y + 3)									ifNotNil: 										[Dialog warn: 'Les jaunes ont déjà gagnés. Veuillez recommencer.'.										self model value doPlay: false]]]].					"balayage diagonale, bas droite -&gt; haut gauche"					(isWining := self model value isWining: ColorValue yellow pos: pos x @ pos y) ifNotNil: [(isWining := self model value isWining: ColorValue yellow pos: pos x @ pos y + 1) ifNotNil: [(isWining := self model value isWining: ColorValue yellow pos: pos x @ pos y + 2) ifNotNil: [(isWining := self model value isWining: ColorValue yellow pos: pos x @ pos y + 3)									ifNotNil: 										[Dialog warn: 'Les jaunes ont déjà gagnés. Veuillez recommencer'.										self model value doPlay: false]]]].					"balayage diagonale, bas gauche -&gt; haut droite"					(isWining := self model value isWining: ColorValue yellow pos: pos x @ pos y) ifNotNil: [(isWining := self model value isWining: ColorValue yellow pos: pos x - 2 @ pos y + 1) ifNotNil: [(isWining := self model value isWining: ColorValue yellow pos: pos x - 4 @ pos y + 2) ifNotNil: [(isWining := self model value isWining: ColorValue yellow pos: pos x - 6 @ pos y + 3)									ifNotNil: 										[Dialog warn: 'Les jaunes ont déjà gagnés. Veuillez recommencer.'.										self model value doPlay: false]]]]]].	self model value: monModele.	^self</body>
</methods>

<methods>
<class-id>Puissance4Controller</class-id> <category>accessing</category>

<body package="Puissance4_Mannechez_Morvillez" selector="selected:">selected: anObject 	selected := anObject.	^self</body>

<body package="Puissance4_Mannechez_Morvillez" selector="pressed:">pressed: anObject 	pressed := anObject.	^self</body>

<body package="Puissance4_Mannechez_Morvillez" selector="pressed">pressed	^pressed</body>

<body package="Puissance4_Mannechez_Morvillez" selector="selected">selected	"	***This is decompiled code.*** 	No source was available"	^selected</body>
</methods>

<methods>
<class-id>Puissance4Controller</class-id> <category>initialize-release</category>

<body package="Puissance4_Mannechez_Morvillez" selector="initialize">initialize	super initialize.	pressed := false.	selected := true.	^self</body>
</methods>


<methods>
<class-id>UIPuissance4 class</class-id> <category>interface specs</category>

<body package="Puissance4_Mannechez_Morvillez" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#properties: #(#{UI.PropertyListDictionary} #labelFromApplication false ) 			#label: 'Puissance4' 			#min: #(#{Core.Point} 20 20 ) 			#max: #(#{Core.Point} 0 0 ) 			#bounds: #(#{Graphics.Rectangle} 654 290 1354 790 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 498 0 153 0 598 0 170 0 ) 					#name: #InputField1 					#flags: 0 					#isOpaque: true 					#model: #lePoint 					#tabable: false 					#style: #fixed 					#type: #string ) 				#(#{UI.ArbitraryComponentSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.0828571 0 0.084 397 0.0828571 328 0.084 ) 					#name: #ViewHolder1 					#colors: 					#(#{UI.LookPreferences} 						#setBackgroundColor: #(#{Graphics.ColorValue} 6143 8191 6143 ) ) 					#component: #laVue ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 499 0 185 0 594 0 202 0 ) 					#name: #InputField2 					#flags: 0 					#isOpaque: true 					#model: #leJoueur 					#tabable: false 					#style: #fixed ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.LayoutFrame} 496 0 231 0 585 0 370 0 ) 					#name: #List1 					#model: #listHisto 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 495 0 46 0 580 0 66 0 ) 					#name: #ActionButton1 					#model: #processusStart 					#label: 'Play' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 496 0 76 0 580 0 97 0 ) 					#name: #ActionButton2 					#model: #processusStop 					#label: 'Reset' 					#defaultable: true ) ) ) )</body>
</methods>


<methods>
<class-id>UIPuissance4</class-id> <category>accessing</category>

<body package="Puissance4_Mannechez_Morvillez" selector="laVue">laVue	^laVue</body>

<body package="Puissance4_Mannechez_Morvillez" selector="processMove">processMove	^processMove</body>

<body package="Puissance4_Mannechez_Morvillez" selector="processMove:">processMove: anObject 	processMove := anObject.	^self</body>

<body package="Puissance4_Mannechez_Morvillez" selector="laVue:">laVue: anObject 	laVue := anObject.	^self</body>
</methods>

<methods>
<class-id>UIPuissance4</class-id> <category>changing</category>

<body package="Puissance4_Mannechez_Morvillez" selector="changeGrille">changeGrille	| monModele maPosition monHistorique liste |	self laVue model value doPlay		ifTrue: 			[maPosition := (monModele := self laVue model value) position.			monHistorique := monModele historique.			liste := (1 to: monHistorique size) reverse.			self listHisto list: liste.			self lePoint value: maPosition printString.			self laVue invalidate].	^self</body>

<body package="Puissance4_Mannechez_Morvillez" selector="changeJoueur">changeJoueur	| monJoueur |	self laVue model value doPlay		ifTrue: 			[monJoueur := self laVue model value joueur.				( monJoueur \\ 2 = 0 )				ifTrue:[ self leJoueur value: 'joueur: 2' ]				ifFalse:[ self leJoueur value: 'joueur: 1' ].  				self laVue invalidateNow.].						^self.</body>
</methods>

<methods>
<class-id>UIPuissance4</class-id> <category>actions</category>

<body package="Puissance4_Mannechez_Morvillez" selector="processusStop">processusStop	"Si le bouton reset est actionné alors le processus sarrête et on met tout à zero."	| monHistorique monModele mesPieces monJoueur |	self processMove terminate.	(self builder componentAt: #ActionButton2) disable.	(self builder componentAt: #ActionButton1) enable.	monHistorique := (monModele := self laVue model value) historique.	monHistorique := OrderedCollection new.		mesPieces := monModele lesPieces.	(mesPieces := OrderedCollection new) add: Puissance4Model testPieceRouge.		monJoueur := monModele joueur.	monJoueur := 1.		self laVue model value historique: monHistorique.	self laVue model value lesPieces: mesPieces.	self laVue model value joueur: monJoueur.	self laVue model value doPlay: false.	self laVue model value: self laVue model value.	^self</body>

<body package="Puissance4_Mannechez_Morvillez" selector="downPiece">downPiece"On fait tomber la pièce joué jusqu'à la fin de notre plateau."	| pos monHistorique |	(monHistorique := self laVue model value historique)		do: 			[:piece | 			pos := piece at: 4.			(self laVue model value detectPosValide: pos x - 1 @ pos y + 1)				ifNil: [pos y &lt; 5						ifTrue: [pos := piece at: 4 put: pos x - 1 @ pos y + 1]						ifFalse: [nil]]].	self laVue model value historique: monHistorique.	self laVue model value: self laVue model value.	^self</body>

<body package="Puissance4_Mannechez_Morvillez" selector="processusStart">processusStart	"Si le bouton Play est actionné alors le processus se lance."	| delai |	self processMove: 		[delai := Delay forMilliseconds: 70.		[true]			whileTrue: 				[delai wait.				self downPiece].		nil] fork.	(self builder componentAt: #ActionButton1) disable.	(self builder componentAt: #ActionButton2) enable.	self laVue model value doPlay: true.	self laVue model value: self laVue model value.	^self</body>
</methods>

<methods>
<class-id>UIPuissance4</class-id> <category>interface opening</category>

<body package="Puissance4_Mannechez_Morvillez" selector="postOpenWith:">postOpenWith: spec 	"	***This is decompiled code.*** 	No source was available"	(self builder componentAt: #ActionButton2) disable.	(self builder componentAt: #ActionButton1) enable.	^self</body>
</methods>

<methods>
<class-id>UIPuissance4</class-id> <category>initialize-release</category>

<body package="Puissance4_Mannechez_Morvillez" selector="initialize">initialize	| monModele |		monModele := Puissance4Model testGrille asValue.	(laVue := Puissance4View new) model: monModele.	monModele onChangeSend: #changeGrille to: self.	monModele onChangeSend: #changeJoueur to: self.	^self</body>
</methods>

<methods>
<class-id>UIPuissance4</class-id> <category>aspects</category>

<body package="Puissance4_Mannechez_Morvillez" selector="leJoueur">leJoueur	leJoueur isNil ifTrue: [^leJoueur := String new asValue].	^leJoueur</body>

<body package="Puissance4_Mannechez_Morvillez" selector="lePoint">lePoint	lePoint isNil ifTrue: [^lePoint := String new asValue].	^lePoint</body>

<body package="Puissance4_Mannechez_Morvillez" selector="listHisto">listHisto	listHisto isNil ifTrue: [^listHisto := SelectionInList new].	^listHisto</body>
</methods>


<methods>
<class-id>Puissance4View</class-id> <category>controller accessing</category>

<body package="Puissance4_Mannechez_Morvillez" selector="defaultControllerClass">defaultControllerClass	^Puissance4Controller</body>
</methods>

<methods>
<class-id>Puissance4View</class-id> <category>displaying</category>

<body package="Puissance4_Mannechez_Morvillez" selector="displayOn:">displayOn: aGC | grille carreWidth ypos xpos position gaw ga laPieceGrille mesPieces circle mode stroker attributes piecesValide pos posX posY  |	grille := self model value.	carreWidth := (self bounds width / grille dimension x) truncated.	laPieceGrille := Puissance4Model testPiece.	position := grille position.	mesPieces := self model value lesPieces.	piecesValide := self model value historique.	(self model value doPlay)	ifTrue:[	ypos := 1.	0 to: 5		do: 			[:line |			xpos := 1.			0 to: 6				do: 					[:column |					position = (column @ line)						ifTrue: 							["Pieces noir, de la couleur de la grille, suit notre curseur. Les pièces au premier rang seront de la couleur du joueur ( jaune ou rouge )."								mesPieces do:[											:piece |												gaw := GraphicsAttributesWrapper on: laPieceGrille asStroker.												ga := GraphicsAttributes new paint: ColorValue black.												gaw attributes: ga.												gaw displayOn: aGC at: xpos @ ypos.												circle := piece first.												mode := piece at: 3.												mode = #filled ifTrue: [ stroker := circle asFiller].												mode = #stroked ifTrue: [ stroker := circle asStroker ].												gaw := GraphicsAttributesWrapper on: stroker.												attributes := GraphicsAttributes new.												attributes paint: ( piece at: 2 ).												gaw attributes: attributes.												gaw displayOn: aGC at: xpos  @ 1.																							].							]						ifFalse: 							["Les pièces formant notre plateau de jeu."							gaw := GraphicsAttributesWrapper on: laPieceGrille asStroker.							ga := GraphicsAttributes new paint: ColorValue black.							gaw attributes: ga.							gaw displayOn: aGC at: xpos @ ypos.														"Les pièces déjà joué, qui sont dans le tableau historique, seront affichées."								piecesValide do:[											:piece |												circle := piece first.												mode := piece at: 3.												pos := piece at: 4.												mode = #filled ifTrue: [ stroker := circle asFiller].												mode = #stroked ifTrue: [ stroker := circle asStroker ].												gaw := GraphicsAttributesWrapper on: stroker.												attributes := GraphicsAttributes new.												attributes paint: ( piece at: 2 ).												gaw attributes: attributes.												posX := ( pos x * carreWidth) truncated.												posY := ( pos y * carreWidth ) truncated.												gaw displayOn: aGC at: posX @ posY+1.																							]].														xpos := xpos + carreWidth].			ypos := ypos + carreWidth].].	^self</body>
</methods>

<methods>
<class-id>Puissance4View</class-id> <category>initialize-release</category>

<body package="Puissance4_Mannechez_Morvillez" selector="initialize">initialize	super initialize.	^self</body>
</methods>



</st-source>
