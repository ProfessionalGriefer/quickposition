FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Author: Vincent Nahn     � 	 	 *   A u t h o r :   V i n c e n t   N a h n   
  
 l     ��������  ��  ��        l     ��  ��    ] W GUI script to open the System Settings and click on the button which activates Sidecar     �   �   G U I   s c r i p t   t o   o p e n   t h e   S y s t e m   S e t t i n g s   a n d   c l i c k   o n   t h e   b u t t o n   w h i c h   a c t i v a t e s   S i d e c a r      l     ��  ��    d ^ It would be better to to it through an API call but I couldn't find anything better than this     �   �   I t   w o u l d   b e   b e t t e r   t o   t o   i t   t h r o u g h   a n   A P I   c a l l   b u t   I   c o u l d n ' t   f i n d   a n y t h i n g   b e t t e r   t h a n   t h i s      l     ��  ��    9 3 Writing this AppleScript script was not fun at all     �   f   W r i t i n g   t h i s   A p p l e S c r i p t   s c r i p t   w a s   n o t   f u n   a t   a l l      l     ��������  ��  ��        l     ��������  ��  ��         l     �� ! "��   !   Currently Version 15    " � # # *   C u r r e n t l y   V e r s i o n   1 5    $ % $ l     &���� & r      ' ( ' I    �� )��
�� .fndrgstl****    ��� **** ) m      * * � + +  s y s 1��   ( o      ���� 0 osmajor OSmajor��  ��   %  , - , l     ��������  ��  ��   -  . / . l     ��������  ��  ��   /  0 1 0 l    2���� 2 Z     3 4���� 3 A     5 6 5 o    	���� 0 osmajor OSmajor 6 m   	 
����  4 I   �� 7��
�� .sysodisAaleR        TEXT 7 m     8 8 � 9 9 � [ W A R N I N G ] :   O S   V e r s i o n   l e s s   t h a n   1 5 .   M i g h t   n o t   b e   w o r k i n g   a s   e x p e c t e d .��  ��  ��  ��  ��   1  : ; : l     ��������  ��  ��   ;  < = < l   4 >���� > O    4 ? @ ? k    3 A A  B C B I   !������
�� .miscactvnull��� ��� null��  ��   C  D E D I  " '�� F��
�� .sysodelanull��� ��� nmbr F m   " #���� ��   E  G H G r   ( 1 I J I 5   ( -�� K��
�� 
xppb K m   * + L L � M M J c o m . a p p l e . D i s p l a y s - S e t t i n g s . e x t e n s i o n
�� kfrmID   J l      N���� N 1   - 0��
�� 
xpcp��  ��   H  O P O l  2 2�� Q R��   Q 4 .reveal anchor "sidecarSection" of current pane    R � S S \ r e v e a l   a n c h o r   " s i d e c a r S e c t i o n "   o f   c u r r e n t   p a n e P  T�� T l  2 2��������  ��  ��  ��   @ m     U U�                                                                                  sprf  alis    T  Macintosh HD               �!B�BD ����System Settings.app                                            �����!B�        ����  
 cu             Applications  */:System:Applications:System Settings.app/  (  S y s t e m   S e t t i n g s . a p p    M a c i n t o s h   H D  'System/Applications/System Settings.app   / ��  ��  ��   =  V W V l     ��������  ��  ��   W  X Y X l     ��������  ��  ��   Y  Z [ Z l     ��������  ��  ��   [  \ ] \ l  5 ^���� ^ O   5 _ ` _ k   9 a a  b c b l  9 9��������  ��  ��   c  d e d l  9 9��������  ��  ��   e  f g f W   9 l�� h��   h I  = g�� i��
�� .coredoexnull���     **** i n   = c j k j 4   \ c�� l
�� 
popB l m   _ b m m � n n  A d d k n   = \ o p o 4   W \�� q
�� 
sgrp q m   Z [����  p n   = W r s r 4   R W�� t
�� 
sgrp t m   U V����  s n   = R u v u 4   M R�� w
�� 
splg w m   P Q����  v n   = M x y x 4   H M�� z
�� 
sgrp z m   K L����  y n   = H { | { 4   A H�� }
�� 
cwin } m   D G ~ ~ �    D i s p l a y s | 4   = A�� �
�� 
prcs � m   ? @ � � � � �  S y s t e m   S e t t i n g s��   g  � � � I  m ��� ���
�� .prcsclicnull��� ��� uiel � n   m � � � � 4   � ��� �
�� 
popB � m   � � � � � � �  A d d � n   m � � � � 4   � ��� �
�� 
sgrp � m   � �����  � n   m � � � � 4   � ��� �
�� 
sgrp � m   � �����  � n   m � � � � 4    ��� �
�� 
splg � m   � �����  � n   m  � � � 4   z �� �
�� 
sgrp � m   } ~����  � n   m z � � � 4   s z�� �
�� 
cwin � m   v y � � � � �  D i s p l a y s � 4   m s�� �
�� 
prcs � m   o r � � � � �  S y s t e m   S e t t i n g s��   �  � � � l  � ���������  ��  ��   �  � � � W   � ��� ���   � I  � ��� ���
�� .coredoexnull���     **** � n   � � � � � 4   � ��� �
�� 
menI � m   � � � � � � �  V i n c e n t  s   i P a d � n   � � � � � 4   � ��� �
�� 
menE � m   � � � � � � �  A d d � n   � � � � � 4   � ��� �
�� 
popB � m   � � � � � � �  A d d � n   � � � � � 4   � ��� �
�� 
sgrp � m   � �����  � n   � � � � � 4   � ��� �
�� 
sgrp � m   � �����  � n   � � � � � 4   � ��� �
�� 
splg � m   � �����  � n   � � � � � 4   � ��� �
�� 
sgrp � m   � �����  � n   � � � � � 4   � ��� �
�� 
cwin � m   � � � � � � �  D i s p l a y s � n   � � � � � 4   � ��� �
�� 
pcap � m   � � � � � � �  S y s t e m   S e t t i n g s � m   � � � ��                                                                                  sevs  alis    \  Macintosh HD               �!B�BD ����System Events.app                                              �����!B�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��   �  � � � I  ��� ���
�� .prcsclicnull��� ��� uiel � n   � � � � 4  �� �
�� 
menI � m   � � � � �  V i n c e n t  s   i P a d � n   � � � � 4  
�� �
�� 
menE � m   � � � � �  A d d � n   �
 � � � 4  
�� �
�� 
popB � m  	 � � � � �  A d d � n   � � � � 4   ��� �
�� 
sgrp � m  ����  � n   � � � � � 4   � ��� �
�� 
sgrp � m   � �����  � n   � � � � � 4   � ��� �
�� 
splg � m   � ���  � n   � � � � � 4   � ��~ �
�~ 
sgrp � m   � ��}�}  � n   � � � � � 4   � ��| �
�| 
cwin � m   � � � � � � �  D i s p l a y s � n   � � � � � 4   � ��{ �
�{ 
pcap � m   � � � � � � �  S y s t e m   S e t t i n g s � m   � � � ��                                                                                  sevs  alis    \  Macintosh HD               �!B�BD ����System Events.app                                              �����!B�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��   �  � � � l �z�y�x�z  �y  �x   �  � � � l �w�v�u�w  �v  �u   �  � � � l  �t � ��t   �& 
	-- Idea is to click the last iPad Item, but AppleScript is too primitive to do even that
	set menuItems to menu items of menu "Add" of pop up button "Add" of group 1 of group 2 of splitter group 1 of group 1 of window "Displays" of application process "System Settings" of application "System Events"	set iPadItems to {}		-- Loop through the menu items and find all "Vincent�s iPad" items	repeat with aMenuItem in iPadItems		if name of aMenuItem is "Vincent�s iPad" then			set end of vincentiPadItems to aMenuItem		end if	end repeat	    � � � �@ 
 	 - -   I d e a   i s   t o   c l i c k   t h e   l a s t   i P a d   I t e m ,   b u t   A p p l e S c r i p t   i s   t o o   p r i m i t i v e   t o   d o   e v e n   t h a t 
 	 s e t   m e n u I t e m s   t o   m e n u   i t e m s   o f   m e n u   " A d d "   o f   p o p   u p   b u t t o n   " A d d "   o f   g r o u p   1   o f   g r o u p   2   o f   s p l i t t e r   g r o u p   1   o f   g r o u p   1   o f   w i n d o w   " D i s p l a y s "   o f   a p p l i c a t i o n   p r o c e s s   " S y s t e m   S e t t i n g s "   o f   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 s e t   i P a d I t e m s   t o   { }  	  	 - -   L o o p   t h r o u g h   t h e   m e n u   i t e m s   a n d   f i n d   a l l   " V i n c e n t  s   i P a d "   i t e m s  	 r e p e a t   w i t h   a M e n u I t e m   i n   i P a d I t e m s  	 	 i f   n a m e   o f   a M e n u I t e m   i s   " V i n c e n t  s   i P a d "   t h e n  	 	 	 s e t   e n d   o f   v i n c e n t i P a d I t e m s   t o   a M e n u I t e m  	 	 e n d   i f  	 e n d   r e p e a t  	 �  � � � l �s�r�q�s  �r  �q   �  �  � l �p�o�n�p  �o  �n    �m l �l�k�j�l  �k  �j  �m   ` m   5 6�                                                                                  sevs  alis    \  Macintosh HD               �!B�BD ����System Events.app                                              �����!B�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   ]  l     �i�h�g�i  �h  �g    l     �f�f      Close the Settings window    �		 4   C l o s e   t h e   S e t t i n g s   w i n d o w 
�e
 l  *�d�c O   * I $)�b�a�`
�b .aevtquitnull��� ��� null�a  �`   m   !�                                                                                  sprf  alis    T  Macintosh HD               �!B�BD ����System Settings.app                                            �����!B�        ����  
 cu             Applications  */:System:Applications:System Settings.app/  (  S y s t e m   S e t t i n g s . a p p    M a c i n t o s h   H D  'System/Applications/System Settings.app   / ��  �d  �c  �e       �_�^�_   �]�\
�] .aevtoappnull  �   � ****�\ 0 osmajor OSmajor �[�Z�Y�X
�[ .aevtoappnull  �   � **** k    *  $  0  <  \ 
�W�W  �Z  �Y     ) *�V�U�T 8�S U�R�Q�P L�O�N�M ��L ~�K�J�I m�H � � ��G�F � � ��E ��D � � � � � ��C
�V .fndrgstl****    ��� ****�U 0 osmajor OSmajor�T 
�S .sysodisAaleR        TEXT
�R .miscactvnull��� ��� null
�Q .sysodelanull��� ��� nmbr
�P 
xppb
�O kfrmID  
�N 
xpcp
�M 
prcs
�L 
cwin
�K 
sgrp
�J 
splg
�I 
popB
�H .coredoexnull���     ****
�G .prcsclicnull��� ��� uiel
�F 
pcap
�E 
menE
�D 
menI
�C .aevtquitnull��� ��� null�X+�j E�O�� 
�j Y hO� *j Okj O*���0*�,FOPUO� � 2h*��/a a /a k/a k/a l/a k/a a /j hY��O*�a /a a /a k/a k/a l/a k/a a /j O Dh�a a /a a /a k/a k/a l/a k/a a /a a  /a !a "/j hY��O�a a #/a a $/a k/a k/a l/a k/a a %/a a &/a !a '/j OPUO� *j (U�^  ascr  ��ޭ