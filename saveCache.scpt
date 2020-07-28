FasdUAS 1.101.10   ��   ��    k             i         I      �� 	���� "0 writetexttofile writeTextToFile 	  
  
 o      ���� 0 thetext theText      o      ���� 0 thefile theFile   ��  o      ���� 40 overwriteexistingcontent overwriteExistingContent��  ��    Q     [     k    <       l   ��  ��    #  Convert the file to a string     �   :   C o n v e r t   t h e   f i l e   t o   a   s t r i n g      r        c        o    ���� 0 thefile theFile  m    ��
�� 
TEXT  o      ���� 0 thefile theFile      l  	 	��������  ��  ��       !   l  	 	�� " #��   "    Open the file for writing    # � $ $ 4   O p e n   t h e   f i l e   f o r   w r i t i n g !  % & % r   	  ' ( ' I  	 �� ) *
�� .rdwropenshor       file ) 4   	 �� +
�� 
file + o    ���� 0 thefile theFile * �� ,��
�� 
perm , m    ��
�� boovtrue��   ( o      ���� 0 theopenedfile theOpenedFile &  - . - l   ��������  ��  ��   .  / 0 / l   �� 1 2��   1 6 0 Clear the file if content should be overwritten    2 � 3 3 `   C l e a r   t h e   f i l e   i f   c o n t e n t   s h o u l d   b e   o v e r w r i t t e n 0  4 5 4 Z   ' 6 7���� 6 =    8 9 8 o    ���� 40 overwriteexistingcontent overwriteExistingContent 9 m    ��
�� boovtrue 7 I   #�� : ;
�� .rdwrseofnull���     **** : o    ���� 0 theopenedfile theOpenedFile ; �� <��
�� 
set2 < m    ����  ��  ��  ��   5  = > = l  ( (��������  ��  ��   >  ? @ ? l  ( (�� A B��   A ( " Write the new content to the file    B � C C D   W r i t e   t h e   n e w   c o n t e n t   t o   t h e   f i l e @  D E D I  ( 1�� F G
�� .rdwrwritnull���     **** F o   ( )���� 0 thetext theText G �� H I
�� 
refn H o   * +���� 0 theopenedfile theOpenedFile I �� J��
�� 
wrat J m   , -��
�� rdwreof ��   E  K L K l  2 2��������  ��  ��   L  M N M l  2 2�� O P��   O   Close the file    P � Q Q    C l o s e   t h e   f i l e N  R S R I  2 7�� T��
�� .rdwrclosnull���     **** T o   2 3���� 0 theopenedfile theOpenedFile��   S  U V U l  8 8��������  ��  ��   V  W X W l  8 8�� Y Z��   Y > 8 Return a boolean indicating that writing was successful    Z � [ [ p   R e t u r n   a   b o o l e a n   i n d i c a t i n g   t h a t   w r i t i n g   w a s   s u c c e s s f u l X  \ ] \ L   8 : ^ ^ m   8 9��
�� boovtrue ]  _ ` _ l  ; ;��������  ��  ��   `  a�� a l  ; ;�� b c��   b   Handle a write error    c � d d *   H a n d l e   a   w r i t e   e r r o r��    R      ������
�� .ascrerr ****      � ****��  ��    k   D [ e e  f g f l  D D�� h i��   h   Close the file    i � j j    C l o s e   t h e   f i l e g  k l k Q   D X m n�� m I  G O�� o��
�� .rdwrclosnull���     **** o 4   G K�� p
�� 
file p o   I J���� 0 thefile theFile��   n R      ������
�� .ascrerr ****      � ****��  ��  ��   l  q r q l  Y Y��������  ��  ��   r  s t s l  Y Y�� u v��   u 6 0 Return a boolean indicating that writing failed    v � w w `   R e t u r n   a   b o o l e a n   i n d i c a t i n g   t h a t   w r i t i n g   f a i l e d t  x�� x L   Y [ y y m   Y Z��
�� boovfals��     z { z l     ��������  ��  ��   {  | } | i     ~  ~ I      �� ����� 0 prependtext prependText �  � � � o      ���� (0 targetfilepathname targetFilePathname �  ��� � o      ����  0 thetexttowrite theTextToWrite��  ��    k     � � �  � � � r      � � � m      � � � � �   � o      ���� "0 theoriginaltext theOriginalText �  � � � Q     � ��� � r     � � � l    ����� � I   �� � �
�� .rdwrread****        **** � o    ���� (0 targetfilepathname targetFilePathname � �� ���
�� 
as   � m   	 
��
�� 
utf8��  ��  ��   � o      ���� "0 theoriginaltext theOriginalText � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  � � � l   �� � ���   � I C    # set theTextToWrite to theTextToWrite & "\n" & theOriginalText    � � � � �         #   s e t   t h e T e x t T o W r i t e   t o   t h e T e x t T o W r i t e   &   " \ n "   &   t h e O r i g i n a l T e x t �  � � � r    ! � � � b     � � � b     � � � o    ����  0 thetexttowrite theTextToWrite � m     � � � � �  
 � o    ���� "0 theoriginaltext theOriginalText � o      ����  0 thetexttowrite theTextToWrite �  ��� � Q   " � � � � � k   % @ � �  � � � r   % . � � � I  % ,�� � �
�� .rdwropenshor       file � o   % &���� (0 targetfilepathname targetFilePathname � �� ���
�� 
perm � m   ' (��
�� boovtrue��   � o      ���� "0 referencenumber referenceNumber �  � � � I  / :�� � �
�� .rdwrwritnull���     **** � o   / 0����  0 thetexttowrite theTextToWrite � �� � �
�� 
refn � o   1 2���� "0 referencenumber referenceNumber � �� � �
�� 
as   � m   3 4��
�� 
utf8 � �� ���
�� 
wrat � m   5 6����  ��   �  ��� � I  ; @�� ���
�� .rdwrclosnull���     **** � o   ; <���� "0 referencenumber referenceNumber��  ��   � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 estr eStr � � ��~
� 
errn � o      �}�} 0 enum eNum�~   � k   H � � �  � � � I  H m�| � �
�| .sysodlogaskr        TEXT � b   H O � � � b   H M � � � o   H I�{�{ 0 estr eStr � m   I L � � � � �    n u m b e r   � o   M N�z�z 0 enum eNum � �y � �
�y 
btns � J   R W � �  ��x � m   R U � � � � �  O K�x   � �w � �
�w 
dflt � m   Z [�v�v  � �u � �
�u 
appr � m   ^ a � � � � � " F i l e   I / O   E r r o r . . . � �t ��s
�t 
disp � m   d g�r
�r stic   �s   �  � � � Q   n  � ��q � I  q v�p ��o
�p .rdwrclosnull���     **** � o   q r�n�n "0 referencenumber referenceNumber�o   � R      �m�l�k
�m .ascrerr ****      � ****�l  �k  �q   �  ��j � L   � ��i�i  �j  ��   }  � � � l     �h�g�f�h  �g  �f   �  � � � i     � � � I      �e ��d�e 0 
fileexists 
FileExists �  ��c � o      �b�b 0 thefile theFile�c  �d   � l     � � � � O      � � � Z     � ��a � � I   �` ��_
�` .coredoexnull���     **** � 4    �^ �
�^ 
file � o    �]�] 0 thefile theFile�_   � L     � � m    �\
�\ boovtrue�a   � L     � � m    �[
�[ boovfals � m      � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �   (String) as Boolean    � � � � (   ( S t r i n g )   a s   B o o l e a n �  � � � l     �Z�Y�X�Z  �Y  �X   �  ��W � i     � � � I     �V ��U
�V .aevtoappnull  �   � **** � o      �T�T 0 argv  �U   � k    c � �  � � � r      � � � I    �S ��R
�S .sysoloadscpt        file � b      � � � n        1   	 �Q
�Q 
psxp l    	�P�O b     	 l    �N�M I    �L
�L .earsffdralis        afdr  f      �K�J
�K 
rtyp m    �I
�I 
ctxt�J  �N  �M   m    		 �

  : :�P  �O   � m     �  u t i l i t y . s c p t�R   � o      �H�H 0 utility   �  l   �G�F�E�G  �F  �E    r     c     n    I    �D�C�B�D  0 getcurrentpath getCurrentPath�C  �B   o    �A�A 0 utility   m    �@
�@ 
TEXT o      �?�? 0 currentpath currentPath  l   �>�=�<�>  �=  �<    r    # b    ! o    �;�; 0 currentpath currentPath m      �     : s e a r c h _ c o n t e n t : o      �:�: &0 searchcontentpath searchContentPath !"! l  $ $�9�8�7�9  �8  �7  " #$# l  $ $�6%&�6  % #  Cache json path	(posix path)   & �'' :   C a c h e   j s o n   p a t h 	 ( p o s i x   p a t h )$ ()( r   $ -*+* b   $ +,-, l  $ ).�5�4. n  $ )/0/ I   % )�3�2�1�3 *0 getcurrentposixpath getCurrentPosixPath�2  �1  0 o   $ %�0�0 0 utility  �5  �4  - m   ) *11 �22 @ s e a r c h _ c o n t e n t / h t m l C a c h e L o g . j s o n+ o      �/�/ &0 htmlcachefilepath htmlCacheFilePath) 343 l  . .�.�-�,�.  �-  �,  4 565 l  . .�+78�+  7  
 cache map   8 �99    c a c h e   m a p6 :;: r   . ;<=< I  . 7�*>?�* 0 jsontorecord JSONtoRecord> o   . /�)�) 0 utility  ? �(@�'
�( 
from@ o   2 3�&�& &0 htmlcachefilepath htmlCacheFilePath�'  = o      �%�% 0 htmlcachejson htmlCacheJson; ABA l  < <�$�#�"�$  �#  �"  B CDC l  < <�!EF�!  E ? 9 todo: json�� ��� �ְų� ������ Ʋ���� ���⼭ ������ ��.   F �GG L   t o d o :   j s o n�t  �DŴ  ǈ�p��  ����t  �����t  ��0�  �з�   �� .D HIH l  < <� JK�   J   todo: 1763 error   K �LL "   t o d o :   1 7 6 3   e r r o rI MNM r   < HOPO n  < DQRQ I   = D�S�� 0 onmutablecopy onMutableCopyS T�T o   = @�� 0 htmlcachejson htmlCacheJson�  �  R o   < =�� 0 utility  P o      �� 0 htmlcachejson htmlCacheJsonN UVU l  I I����  �  �  V WXW r   I PYZY m   I L[[ �\\ � f o n t - f a m i l y :   " T r e b u c h e t   M S " ,   " L u c i d a   S a n s   U n i c o d e " ,   " L u c i d a   G r a n d e " ,   " L u c i d a   S a n s " ,   A r i a l ,   s a n s - s e r i f ; 'Z o      �� &0 metadatafontstyle metaDataFontStyleX ]^] l  Q Q����  �  �  ^ _`_ O   Q taba I  W s��c
� .corecrel****      � null�  c �de
� 
kocld m   [ ^�
� 
cfole �fg
� 
inshf o   a b�� 0 currentpath currentPathg �h�
� 
prdth K   e mii �
j�	
�
 
pnamj m   h kkk �ll  C a c h i n g�	  �  b m   Q Tmm�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ` non l  u u����  �  �  o pqp I  u |�r�
� .sysoexecTEXT���     TEXTr m   u xss �tt > o p e n   / A p p l i c a t i o n s / E v e r n o t e . a p p�  q uvu l  } }����  �  �  v wxw O   }>yzy k   �={{ |}| r   � �~~ l  � ��� ��� I  � ������
�� .EVRNfindnull���     ctxt� m   � ��� ���  ��  �   ��   o      ���� 0 allnotes allNotes} ��� l  � ���������  ��  ��  � ��� Z   � �������� =  � ���� l  � ������� I  � ������
�� .corecnte****       ****� o   � ����� 0 allnotes allNotes��  ��  ��  � m   � �����  � L   � ��� m   � ��� ���   ��  ��  � ��� l  � ���������  ��  ��  � ��� I  � �����
�� .EVRNenxpnull���     ****� o   � ����� 0 allnotes allNotes� ����
�� 
kfil� l  � ������� o   � ����� &0 searchcontentpath searchContentPath��  ��  � �����
�� 
Expf� m   � ���
�� Exffexht��  � ��� l  � ���������  ��  ��  � ��� r   � ���� K   � ��� ������� 0 elem  � m   � ��� ���  m i s s i n g   v a l u e��  � o      ���� (0 notetitleindexdict noteTitleIndexDict� ��� l  � ���������  ��  ��  � ��� r   � ���� n  � ���� I   � �������� 0 onmutablecopy onMutableCopy� ���� c   � ���� o   � ����� (0 notetitleindexdict noteTitleIndexDict� m   � ���
�� 
reco��  ��  � o   � ����� 0 utility  � o      ���� (0 notetitleindexdict noteTitleIndexDict� ��� l  � ���������  ��  ��  � ��� r   � ���� m   � ����� � o      ���� 0 i  � ��� l  � ���������  ��  ��  � ��� r   � ���� J   � �����  � o      ���� 0 exceptionlist exceptionList� ��� l  � ���������  ��  ��  � ��� T   � �� k   ���� ��� l  � ���������  ��  ��  � ��� r   ���� c   � ��� l  � ������� n   � ���� 1   � ���
�� 
EVet� l  � ������� n   � ���� 4   � ����
�� 
cobj� o   � ����� 0 i  � o   � ����� 0 allnotes allNotes��  ��  ��  ��  � m   � ���
�� 
TEXT� o      ���� 0 	notetitle 	noteTitle� ��� l ��������  ��  ��  � ��� r  ��� n ��� I  ������� 0 getnoteguid getNoteGuid� ���� n  ��� 1  ��
�� 
EV24� l ������ n  ��� 4  	���
�� 
cobj� o  ���� 0 i  � o  	���� 0 allnotes allNotes��  ��  ��  ��  � o  ���� 0 utility  � o      ���� 0 noteguid  � ��� l ��������  ��  ��  � ��� r  4��� n 0��� I  0������� 0 gettimestring getTimeString� ���� n  ,��� 1  (,��
�� 
EVmm� l (������ n  (��� 4  !(���
�� 
cobj� o  $'���� 0 i  � o  !���� 0 allnotes allNotes��  ��  ��  ��  � o  ���� 0 utility  � o      ���� (0 lastestupdateddate lastestUpdatedDate� ��� l 55��������  ��  ��  � ��� r  5<��� o  58���� 0 	notetitle 	noteTitle� o      ����  0 targetfilename targetFileName� ��� l ==��������  ��  ��  � ��� l ==������  � ) # Some special symbols are replaced.   � ��� F   S o m e   s p e c i a l   s y m b o l s   a r e   r e p l a c e d .� � � r  =O n =K I  >K������ ,0 findandreplaceintext findAndReplaceInText  o  >A����  0 targetfilename targetFileName 	 m  AD

 �  ?	 �� m  DG �  _��  ��   o  =>���� 0 utility   o      ����  0 targetfilename targetFileName   r  Pb n P^ I  Q^������ ,0 findandreplaceintext findAndReplaceInText  o  QT����  0 targetfilename targetFileName  m  TW �  / / �� m  WZ �  _��  ��   o  PQ���� 0 utility   o      ����  0 targetfilename targetFileName   r  cu!"! n cq#$# I  dq��%���� ,0 findandreplaceintext findAndReplaceInText% &'& o  dg����  0 targetfilename targetFileName' ()( m  gj** �++  /) ,��, m  jm-- �..  _��  ��  $ o  cd���� 0 utility  " o      ����  0 targetfilename targetFileName  /0/ l vv��������  ��  ��  0 121 l vv��34��  3 ' ! Colon should be processed with /   4 �55 B   C o l o n   s h o u l d   b e   p r o c e s s e d   w i t h   /2 676 r  v�898 n v�:;: I  w��<�~� ,0 findandreplaceintext findAndReplaceInText< =>= o  wz�}�}  0 targetfilename targetFileName> ?@? m  z}AA �BB  :@ C�|C m  }�DD �EE  /�|  �~  ; o  vw�{�{ 0 utility  9 o      �z�z  0 targetfilename targetFileName7 FGF l ���y�x�w�y  �x  �w  G HIH r  ��JKJ n ��LML I  ���vN�u�v 0 getvalue getValueN OPO o  ���t�t (0 notetitleindexdict noteTitleIndexDictP Q�sQ b  ��RSR m  ��TT �UU  #S o  ���r�r 0 	notetitle 	noteTitle�s  �u  M o  ���q�q 0 utility  K o      �p�p 0 	fileindex 	fileIndexI VWV l ���o�n�m�o  �n  �m  W XYX l ���lZ[�l  Z   for debugging   [ �\\    f o r   d e b u g g i n gY ]^] r  ��_`_ o  ���k�k  0 targetfilename targetFileName` o      �j�j 0 filenameonly fileNameOnly^ aba l ���i�h�g�i  �h  �g  b cdc Z  ��ef�fge = ��hih c  ��jkj o  ���e�e 0 	fileindex 	fileIndexk m  ���d
�d 
TEXTi m  ��ll �mm  m i s s i n g   v a l u ef k  ��nn opo r  ��qrq b  ��sts b  ��uvu o  ���c�c &0 searchcontentpath searchContentPathv o  ���b�b  0 targetfilename targetFileNamet m  ��ww �xx 
 . h t m lr o      �a�a  0 targetfilename targetFileNamep y�`y n ��z{z I  ���_|�^�_ 0 setvalue setValue| }~} o  ���]�] (0 notetitleindexdict noteTitleIndexDict~ � b  ����� m  ���� ���  #� o  ���\�\ 0 	notetitle 	noteTitle� ��[� m  ���Z�Z �[  �^  { o  ���Y�Y 0 utility  �`  �f  g k  ���� ��� r  ����� b  ����� b  ����� b  ����� b  ����� o  ���X�X &0 searchcontentpath searchContentPath� o  ���W�W  0 targetfilename targetFileName� m  ���� ���  _� o  ���V�V 0 	fileindex 	fileIndex� m  ���� ��� 
 . h t m l� o      �U�U  0 targetfilename targetFileName� ��T� n ����� I  ���S��R�S 0 setvalue setValue� ��� o  ���Q�Q (0 notetitleindexdict noteTitleIndexDict� ��� b  ����� m  ���� ���  #� o  ���P�P 0 	notetitle 	noteTitle� ��O� [  ����� o  ���N�N 0 	fileindex 	fileIndex� m  ���M�M �O  �R  � o  ���L�L 0 utility  �T  d ��� l ���K�J�I�K  �J  �I  � ��� Z  �����H�� = ���� n ���� I  ��G��F�G 0 
fileexists 
FileExists� ��E� o  ��D�D  0 targetfilename targetFileName�E  �F  �  f  ��� m  �C
�C boovtrue� k  
��� ��� O 
%��� r  $��� b  ��� o  �B�B 0 noteguid  � m  �� ��� 
 . h t m l� n      ��� 1  #�A
�A 
pnam� 4  �@�
�@ 
file� o  �?�?  0 targetfilename targetFileName� m  
���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� n &4��� I  '4�>��=�> 0 setvalue setValue� ��� o  '*�<�< 0 htmlcachejson htmlCacheJson� ��� o  *-�;�; 0 noteguid  � ��:� o  -0�9�9 (0 lastestupdateddate lastestUpdatedDate�:  �=  � o  &'�8�8 0 utility  � ��� l 55�7�6�5�7  �6  �5  � ��� l 55�4�3�2�4  �3  �2  � ��� r  5I��� c  5E��� l 5C��1�0� n  5C��� 1  ?C�/
�/ 
EVet� l 5?��.�-� n  5?��� 4  8?�,�
�, 
cobj� o  ;>�+�+ 0 i  � o  58�*�* 0 allnotes allNotes�.  �-  �1  �0  � m  CD�)
�) 
TEXT� o      �(�( $0 notetitleunicode noteTitleUnicode� ��� r  J^��� c  JZ��� l JX��'�&� n  JX��� 1  TX�%
�% 
EVmm� l JT��$�#� n  JT��� 4  MT�"�
�" 
cobj� o  PS�!�! 0 i  � o  JM� �  0 allnotes allNotes�$  �#  �'  �&  � m  XY�
� 
TEXT� o      �� &0 lasteditedunicode lastEditedUnicode� ��� r  _s��� c  _o��� l _m���� n  _m��� 1  im�
� 
EVdd� l _i���� n  _i��� 4  bi��
� 
cobj� o  eh�� 0 i  � o  _b�� 0 allnotes allNotes�  �  �  �  � m  mn�
� 
TEXT� o      ��  0 createdunicode createdUnicode� ��� l tt����  �  �  � ��� r  t���� b  t���� b  t�� � b  t� b  t� b  t� b  t� b  t�	
	 b  t� b  t� b  t� b  t� b  t b  t{ m  tw � � < s t y l e > 
 i m g   { 
     m a x - w i d t h :   1 0 0 % ; 
     h e i g h t :   a u t o ; 
 } 
 < / s t y l e > 
 < p   i d = ' t i t l e '   s t y l e = ' f o n t - s i z e :   2 0 ; o  wz�� &0 metadatafontstyle metaDataFontStyle m  {~ �  > T i t l e :   o  ��� 0 	notetitle 	noteTitle m  �� � 
 < / p > 
 m  �� � P < p   i d = ' e d i t e d D a t e '   s t y l e = ' f o n t - s i z e :   2 0 ; o  ���� &0 metadatafontstyle metaDataFontStyle
 m  �� �   " > L a s t   E d i t e d   I n :   o  ���� &0 lasteditedunicode lastEditedUnicode m  ��!! �"" ^ < / p > 
 < p   i d = ' c r e a t i o n D a t e '   s t y l e = ' f o n t - s i z e :   2 0 ; o  ���� &0 metadatafontstyle metaDataFontStyle m  ��## �$$  > C r e a t e d   I n :    o  ����  0 createdunicode createdUnicode� m  ��%% �&& P < / p > 
 < h r   s t y l e = ' m a r g i n - b o t t o m :   1 5 ; '   / >   
� o      �
�
 "0 metadataofnotes metaDataOfNotes� '(' n ��)*) I  ���	+��	 0 prependtext prependText+ ,-, b  ��./. b  ��010 b  ��232 n ��454 I  ������ *0 getcurrentposixpath getCurrentPosixPath�  �  5 o  ���� 0 utility  3 m  ��66 �77  s e a r c h _ c o n t e n t /1 o  ���� 0 noteguid  / m  ��88 �99 
 . h t m l- :�: o  ���� "0 metadataofnotes metaDataOfNotes�  �  *  f  ��( ;� ; l ����������  ��  ��  �   �H  � k  ��<< =>= l ����?@��  ? 6 0 Not caching successfully! (Need to be improved)   @ �AA `   N o t   c a c h i n g   s u c c e s s f u l l y !   ( N e e d   t o   b e   i m p r o v e d )> B��B r  ��CDC b  ��EFE b  ��GHG o  ������ 0 exceptionlist exceptionListH o  ������ 0 filenameonly fileNameOnlyF m  ��II �JJ  
D o      ���� 0 exceptionlist exceptionList��  � KLK l ����������  ��  ��  L MNM r  ��OPO [  ��QRQ o  ������ 0 i  R m  ������ P o      ���� 0 i  N STS l ����������  ��  ��  T U��U Z  ��VW����V l ��X����X ?  ��YZY o  ������ 0 i  Z l ��[����[ I ����\��
�� .corecnte****       ****\ o  ������ 0 allnotes allNotes��  ��  ��  ��  ��  W  S  ����  ��  ��  � ]^] l ��������  ��  ��  ^ _`_ r  aba n 	cdc I  	��e���� 0 keysofrecord keysOfRecorde f��f o  ���� 0 htmlcachejson htmlCacheJson��  ��  d o  ���� 0 utility  b o      ���� 0 keystowrite keysToWrite` ghg r  iji n klk I  ��m����  0 valuesofrecord valuesOfRecordm n��n o  ���� 0 htmlcachejson htmlCacheJson��  ��  l o  ���� 0 utility  j o      ���� 0 valuestowrite valuesToWriteh opo l ��������  ��  ��  p qrq r  *sts n &uvu I  &��w���� 0 makejson makeJsonw xyx o  ���� 0 keystowrite keysToWritey z��z o  "���� 0 valuestowrite valuesToWrite��  ��  v o  ���� 0 utility  t o      ���� 0 jsoncontent jsonContentr {|{ l ++��������  ��  ��  | }~} n +;� I  ,;������� "0 writetexttofile writeTextToFile� ��� o  ,/���� 0 jsoncontent jsonContent� ��� b  /6��� l /2������ c  /2��� o  /0���� 0 currentpath currentPath� m  01��
�� 
TEXT��  ��  � m  25�� ��� B : s e a r c h _ c o n t e n t : h t m l C a c h e L o g . j s o n� ���� m  67��
�� boovtrue��  ��  �  f  +,~ ���� l <<��������  ��  ��  ��  z 5   } ������
�� 
capp� m   � ��� ��� * c o m . e v e r n o t e . E v e r n o t e
�� kfrmID  x ��� l ??��������  ��  ��  � ��� l ??������  � - 'display dialog (count of exceptionList)   � ��� N d i s p l a y   d i a l o g   ( c o u n t   o f   e x c e p t i o n L i s t )� ��� l ??������  �  exceptionList   � ���  e x c e p t i o n L i s t� ��� l ??��������  ��  ��  � ��� O ?\��� I E[�����
�� .coredelonull���     obj � l EW������ c  EW��� l ES������ 4  ES���
�� 
psxf� l IR������ b  IR��� n IN��� I  JN�������� *0 getcurrentposixpath getCurrentPosixPath��  ��  � o  IJ���� 0 utility  � m  NQ�� ���  C a c h i n g��  ��  ��  ��  � m  SV��
�� 
alis��  ��  ��  � m  ?B���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l ]]��������  ��  ��  � ��� L  ]a�� m  ]`�� ���   � ���� l bb��������  ��  ��  ��  �W       ���������  � ���������� "0 writetexttofile writeTextToFile�� 0 prependtext prependText�� 0 
fileexists 
FileExists
�� .aevtoappnull  �   � ****� �� ���������� "0 writetexttofile writeTextToFile�� ����� �  �������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent��  � ���������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent�� 0 theopenedfile theOpenedFile� ������������������������~�}
�� 
TEXT
�� 
file
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� 
refn
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****
� .rdwrclosnull���     ****�~  �}  �� \ >��&E�O*�/�el E�O�e  ��jl Y hO����� 
O�j OeOPW X   *�/j W X  hOf� �| �{�z���y�| 0 prependtext prependText�{ �x��x �  �w�v�w (0 targetfilepathname targetFilePathname�v  0 thetexttowrite theTextToWrite�z  � �u�t�s�r�q�p�u (0 targetfilepathname targetFilePathname�t  0 thetexttowrite theTextToWrite�s "0 theoriginaltext theOriginalText�r "0 referencenumber referenceNumber�q 0 estr eStr�p 0 enum eNum�  ��o�n�m�l�k ��j�i�h�g�f�e�d�c� ��b ��a�` ��_�^�]�\
�o 
as  
�n 
utf8
�m .rdwrread****        ****�l  �k  
�j 
perm
�i .rdwropenshor       file
�h 
refn
�g 
wrat�f 
�e .rdwrwritnull���     ****
�d .rdwrclosnull���     ****�c 0 estr eStr� �[�Z�Y
�[ 
errn�Z 0 enum eNum�Y  
�b 
btns
�a 
dflt
�` 
appr
�_ 
disp
�^ stic   �] 
�\ .sysodlogaskr        TEXT�y ��E�O ���l E�W X  hO��%�%E�O  ��el E�O�����j� O�j W AX  �a %�%a a kva ka a a a a  O 
�j W X  hOh� �X ��W�V���U�X 0 
fileexists 
FileExists�W �T��T �  �S�S 0 thefile theFile�V  � �R�R 0 thefile theFile�  ��Q�P
�Q 
file
�P .coredoexnull���     ****�U � *�/j  eY fU� �O ��N�M���L
�O .aevtoappnull  �   � ****�N 0 argv  �M  � �K�K 0 argv  � t�J�I�H	�G�F�E�D�C�B�A�@1�?�>�=�<�;[�:m�9�8�7�6�5k�4�3s�2�1��0��/�.�-��,�+�*�)�(�'��&�%�$�#�"�!� �������
�*-ADT���lw�������������!#%�68�I��
�	����������
�J 
rtyp
�I 
ctxt
�H .earsffdralis        afdr
�G 
psxp
�F .sysoloadscpt        file�E 0 utility  �D  0 getcurrentpath getCurrentPath
�C 
TEXT�B 0 currentpath currentPath�A &0 searchcontentpath searchContentPath�@ *0 getcurrentposixpath getCurrentPosixPath�? &0 htmlcachefilepath htmlCacheFilePath
�> 
from�= 0 jsontorecord JSONtoRecord�< 0 htmlcachejson htmlCacheJson�; 0 onmutablecopy onMutableCopy�: &0 metadatafontstyle metaDataFontStyle
�9 
kocl
�8 
cfol
�7 
insh
�6 
prdt
�5 
pnam�4 
�3 .corecrel****      � null
�2 .sysoexecTEXT���     TEXT
�1 
capp
�0 kfrmID  
�/ .EVRNfindnull���     ctxt�. 0 allnotes allNotes
�- .corecnte****       ****
�, 
kfil
�+ 
Expf
�* Exffexht�) 
�( .EVRNenxpnull���     ****�' 0 elem  �& (0 notetitleindexdict noteTitleIndexDict
�% 
reco�$ 0 i  �# 0 exceptionlist exceptionList
�" 
cobj
�! 
EVet�  0 	notetitle 	noteTitle
� 
EV24� 0 getnoteguid getNoteGuid� 0 noteguid  
� 
EVmm� 0 gettimestring getTimeString� (0 lastestupdateddate lastestUpdatedDate�  0 targetfilename targetFileName� ,0 findandreplaceintext findAndReplaceInText� 0 getvalue getValue� 0 	fileindex 	fileIndex� 0 filenameonly fileNameOnly� 0 setvalue setValue� 0 
fileexists 
FileExists
� 
file� $0 notetitleunicode noteTitleUnicode� &0 lasteditedunicode lastEditedUnicode
� 
EVdd�  0 createdunicode createdUnicode� "0 metadataofnotes metaDataOfNotes� 0 prependtext prependText� 0 keysofrecord keysOfRecord�
 0 keystowrite keysToWrite�	  0 valuesofrecord valuesOfRecord� 0 valuestowrite valuesToWrite� 0 makejson makeJson� 0 jsoncontent jsonContent� "0 writetexttofile writeTextToFile
� 
psxf
� 
alis
� .coredelonull���     obj �Ld)��l �%�,�%j E�O�j+ �&E�O��%E�O�j+ �%E�O�a �l E` O�_ k+ E` Oa E` Oa  *a a a �a a a la  UOa j  O)a !a "a #0�a $j %E` &O_ &j 'j  	a (Y hO_ &a )�a *a +a , -Oa .a /lE` 0O�_ 0a 1&k+ E` 0OkE` 2OjvE` 3OhZ_ &a 4_ 2/a 5,�&E` 6O�_ &a 4_ 2/a 7,k+ 8E` 9O�_ &a 4_ 2/a :,k+ ;E` <O_ 6E` =O�_ =a >a ?m+ @E` =O�_ =a Aa Bm+ @E` =O�_ =a Ca Dm+ @E` =O�_ =a Ea Fm+ @E` =O�_ 0a G_ 6%l+ HE` IO_ =E` JO_ I�&a K  #�_ =%a L%E` =O�_ 0a M_ 6%km+ NY ,�_ =%a O%_ I%a P%E` =O�_ 0a Q_ 6%_ Ikm+ NO)_ =k+ Re  �a S _ 9a T%*a U_ =/a ,FUO�_ _ 9_ <m+ NO_ &a 4_ 2/a 5,�&E` VO_ &a 4_ 2/a :,�&E` WO_ &a 4_ 2/a X,�&E` YOa Z_ %a [%_ 6%a \%a ]%_ %a ^%_ W%a _%_ %a `%_ Y%a a%E` bO)�j+ a c%_ 9%a d%_ bl+ eOPY _ 3_ J%a f%E` 3O_ 2kE` 2O_ 2_ &j ' Y h[OY��O�_ k+ gE` hO�_ k+ iE` jO�_ h_ jl+ kE` lO)_ l��&a m%em+ nOPUOa  *a o�j+ a p%/a q&j rUOa sOPascr  ��ޭ