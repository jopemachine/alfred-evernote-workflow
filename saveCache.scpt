FasdUAS 1.101.10   ��   ��    k             i         I      �� 	���� "0 writetexttofile writeTextToFile 	  
  
 o      ���� 0 thetext theText      o      ���� 0 thefile theFile   ��  o      ���� 40 overwriteexistingcontent overwriteExistingContent��  ��    Q     e     k    >       l   ��  ��    #  Convert the file to a string     �   :   C o n v e r t   t h e   f i l e   t o   a   s t r i n g      r        c        o    ���� 0 thefile theFile  m    ��
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
set2 < m    ����  ��  ��  ��   5  = > = l  ( (��������  ��  ��   >  ? @ ? l  ( (�� A B��   A ( " Write the new content to the file    B � C C D   W r i t e   t h e   n e w   c o n t e n t   t o   t h e   f i l e @  D E D I  ( 3�� F G
�� .rdwrwritnull���     **** F o   ( )���� 0 thetext theText G �� H I
�� 
refn H o   * +���� 0 theopenedfile theOpenedFile I �� J K
�� 
as   J m   , -��
�� 
utf8 K �� L��
�� 
wrat L m   . /��
�� rdwreof ��   E  M N M l  4 4��������  ��  ��   N  O P O l  4 4�� Q R��   Q   Close the file    R � S S    C l o s e   t h e   f i l e P  T U T I  4 9�� V��
�� .rdwrclosnull���     **** V o   4 5���� 0 theopenedfile theOpenedFile��   U  W X W l  : :��������  ��  ��   X  Y Z Y l  : :�� [ \��   [ > 8 Return a boolean indicating that writing was successful    \ � ] ] p   R e t u r n   a   b o o l e a n   i n d i c a t i n g   t h a t   w r i t i n g   w a s   s u c c e s s f u l Z  ^ _ ^ L   : < ` ` m   : ;��
�� boovtrue _  a b a l  = =��������  ��  ��   b  c�� c l  = =�� d e��   d   Handle a write error    e � f f *   H a n d l e   a   w r i t e   e r r o r��    R      ������
�� .ascrerr ****      � ****��  ��    k   F e g g  h i h I  F M�� j��
�� .sysodlogaskr        TEXT j m   F I k k � l l 
 E r r o r��   i  m n m l  N N�� o p��   o   Close the file    p � q q    C l o s e   t h e   f i l e n  r s r Q   N b t u�� t I  Q Y�� v��
�� .rdwrclosnull���     **** v 4   Q U�� w
�� 
file w o   S T���� 0 thefile theFile��   u R      ������
�� .ascrerr ****      � ****��  ��  ��   s  x y x l  c c��������  ��  ��   y  z { z l  c c�� | }��   | 6 0 Return a boolean indicating that writing failed    } � ~ ~ `   R e t u r n   a   b o o l e a n   i n d i c a t i n g   t h a t   w r i t i n g   f a i l e d {  ��  L   c e � � m   c d��
�� boovfals��     � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 prependtext prependText �  � � � o      ���� (0 targetfilepathname targetFilePathname �  ��� � o      ����  0 thetexttowrite theTextToWrite��  ��   � k     � � �  � � � r      � � � m      � � � � �   � o      ���� "0 theoriginaltext theOriginalText �  � � � Q     � ��� � r     � � � l    ����� � I   �� � �
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
wrat � m   5 6����  ��   �  ��� � I  ; @�� ��
�� .rdwrclosnull���     **** � o   ; <�~�~ "0 referencenumber referenceNumber�  ��   � R      �} � �
�} .ascrerr ****      � **** � o      �|�| 0 estr eStr � �{ ��z
�{ 
errn � o      �y�y 0 enum eNum�z   � k   H � � �  � � � I  H m�x � �
�x .sysodlogaskr        TEXT � b   H O � � � b   H M � � � o   H I�w�w 0 estr eStr � m   I L � � � � �    n u m b e r   � o   M N�v�v 0 enum eNum � �u � �
�u 
btns � J   R W � �  ��t � m   R U � � � � �  O K�t   � �s � �
�s 
dflt � m   Z [�r�r  � �q � �
�q 
appr � m   ^ a � � � � � " F i l e   I / O   E r r o r . . . � �p ��o
�p 
disp � m   d g�n
�n stic   �o   �  � � � Q   n  � ��m � I  q v�l ��k
�l .rdwrclosnull���     **** � o   q r�j�j "0 referencenumber referenceNumber�k   � R      �i�h�g
�i .ascrerr ****      � ****�h  �g  �m   �  ��f � L   � ��e�e  �f  ��   �  � � � l     �d�c�b�d  �c  �b   �  � � � i     � � � I      �a ��`�a 0 
fileexists 
FileExists �  ��_ � o      �^�^ 0 thefile theFile�_  �`   � l     � � � � O      � � � Z     � ��] � � I   �\ ��[
�\ .coredoexnull���     **** � 4    �Z �
�Z 
file � o    �Y�Y 0 thefile theFile�[   � L     � � m    �X
�X boovtrue�]   � L     � � m    �W
�W boovfals � m      � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �   (String) as Boolean    � � � � (   ( S t r i n g )   a s   B o o l e a n �  � � � l     �V�U�T�V  �U  �T   �  ��S � i     � � � I     �R ��Q
�R .aevtoappnull  �   � **** � o      �P�P 0 argv  �Q   � k    � � �    l     �O�N�M�O  �N  �M    l     �L�L      very long time (24 hours)    � 4   v e r y   l o n g   t i m e   ( 2 4   h o u r s )  t    c	
	 k   b  l   �K�J�I�K  �J  �I    r     I   �H�G
�H .sysoloadscpt        file b     n     1    �F
�F 
psxp l   �E�D b     l   	�C�B I   	�A
�A .earsffdralis        afdr  f     �@�?
�@ 
rtyp m    �>
�> 
ctxt�?  �C  �B   m   	 
 �  : :�E  �D   m       �!!  u t i l i t y . s c p t�G   o      �=�= 0 utility   "#" l   �<�;�:�<  �;  �:  # $%$ r    &'& c    ()( n   *+* I    �9�8�7�9  0 getcurrentpath getCurrentPath�8  �7  + o    �6�6 0 utility  ) m    �5
�5 
TEXT' o      �4�4 0 currentpath currentPath% ,-, l     �3�2�1�3  �2  �1  - ./. r     %010 b     #232 o     !�0�0 0 currentpath currentPath3 m   ! "44 �55   : s e a r c h _ c o n t e n t :1 o      �/�/ &0 searchcontentpath searchContentPath/ 676 l  & &�.�-�,�.  �-  �,  7 898 l  & &�+:;�+  : #  Cache json path	(posix path)   ; �<< :   C a c h e   j s o n   p a t h 	 ( p o s i x   p a t h )9 =>= r   & 1?@? b   & -ABA l  & +C�*�)C n  & +DED I   ' +�(�'�&�( *0 getcurrentposixpath getCurrentPosixPath�'  �&  E o   & '�%�% 0 utility  �*  �)  B m   + ,FF �GG @ s e a r c h _ c o n t e n t / h t m l C a c h e L o g . j s o n@ o      �$�$ &0 htmlcachefilepath htmlCacheFilePath> HIH l  2 2�#�"�!�#  �"  �!  I JKJ r   2 ?LML b   2 ;NON l  2 7P� �P n  2 7QRQ I   3 7���� *0 getcurrentposixpath getCurrentPosixPath�  �  R o   2 3�� 0 utility  �   �  O m   7 :SS �TT  a u t h C o n f i g . j s o nM o      �� (0 authconfigfilepath authConfigFilePathK UVU l  @ @����  �  �  V WXW r   @ MYZY b   @ I[\[ l  @ E]��] n  @ E^_^ I   A E���� *0 getcurrentposixpath getCurrentPosixPath�  �  _ o   @ A�� 0 utility  �  �  \ m   E H`` �aa B s e a r c h _ c o n t e n t / t h u m b N a i l P a t h . j s o nZ o      �� 60 thumbnailpathjsonfilepath thumbNailPathJsonFilePathX bcb l  N N����  �  �  c ded l  N N�fg�  f ? 9 todo: json�� ��� �ְų� ������ Ʋ���� ���⼭ ������ ��.   g �hh L   t o d o :   j s o n�t  �DŴ  ǈ�p��  ����t  �����t  ��0�  �з�   �� .e iji l  N N�kl�  k   todo: 1763 error   l �mm "   t o d o :   1 7 6 3   e r r o rj non Q   N �pqrp k   Q �ss tut l  Q Q�
vw�
  v  
 cache map   w �xx    c a c h e   m a pu yzy r   Q `{|{ I  Q \�	}~�	 0 jsontorecord JSONtoRecord} o   Q R�� 0 utility  ~ ��
� 
from o   U X�� &0 htmlcachefilepath htmlCacheFilePath�  | o      �� 0 htmlcachejson htmlCacheJsonz ��� r   a p��� I  a l���� 0 jsontorecord JSONtoRecord� o   a b�� 0 utility  � ��� 
� 
from� o   e h���� (0 authconfigfilepath authConfigFilePath�   � o      ����  0 authconfigjson authConfigJson� ��� r   q ���� I  q |������ 0 jsontorecord JSONtoRecord� o   q r���� 0 utility  � �����
�� 
from� o   u x���� 60 thumbnailpathjsonfilepath thumbNailPathJsonFilePath��  � o      ���� &0 thumbnailpathjson thumbNailPathJson� ��� l  � ���������  ��  ��  � ��� r   � ���� n  � ���� I   � �������� 0 onmutablecopy onMutableCopy� ���� o   � ����� 0 htmlcachejson htmlCacheJson��  ��  � o   � ����� 0 utility  � o      ���� 0 htmlcachejson htmlCacheJson� ��� r   � ���� n  � ���� I   � �������� 0 onmutablecopy onMutableCopy� ���� o   � �����  0 authconfigjson authConfigJson��  ��  � o   � ����� 0 utility  � o      ����  0 authconfigjson authConfigJson� ��� r   � ���� n  � ���� I   � �������� 0 onmutablecopy onMutableCopy� ���� o   � ����� &0 thumbnailpathjson thumbNailPathJson��  ��  � o   � ����� 0 utility  � o      ���� &0 thumbnailpathjson thumbNailPathJson� ���� l  � ���������  ��  ��  ��  q R      ������
�� .ascrerr ****      � ****��  ��  r L   � ��� m   � ��� ���  1 7 6 3o ��� l  � ���������  ��  ��  � ��� r   � ���� m   � ��� ��� � f o n t - f a m i l y :   " T r e b u c h e t   M S " ,   " L u c i d a   S a n s   U n i c o d e " ,   " L u c i d a   G r a n d e " ,   " L u c i d a   S a n s " ,   A r i a l ,   s a n s - s e r i f ; '� o      ���� &0 metadatafontstyle metaDataFontStyle� ��� l  � ���������  ��  ��  � ��� O   � ���� I  � ������
�� .corecrel****      � null��  � ����
�� 
kocl� m   � ���
�� 
cfol� ����
�� 
insh� o   � ����� 0 currentpath currentPath� �����
�� 
prdt� K   � ��� �����
�� 
pnam� m   � ��� ���  C a c h i n g��  ��  � m   � ����                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l  � ���������  ��  ��  � ��� I  � ������
�� .sysoexecTEXT���     TEXT� m   � ��� ��� > o p e n   / A p p l i c a t i o n s / E v e r n o t e . a p p��  � ��� l  � ���������  ��  ��  � ��� O   �B��� k   �A�� ��� r   ���� l  � ������� I  � ������
�� .EVRNfindnull���     ctxt� m   � ��� ���  ��  ��  ��  � o      ���� 0 allnotes allNotes� ��� l ��������  ��  ��  � ��� Z  ������� = ��� l ������ I �����
�� .corecnte****       ****� o  ���� 0 allnotes allNotes��  ��  ��  � m  ����  � L  �� m  �� ���   ��  ��  � ��� l ��������  ��  ��  � ��� I ,����
�� .EVRNenxpnull���     ****� o  ���� 0 allnotes allNotes� ����
�� 
kfil� l  ������ o   ���� &0 searchcontentpath searchContentPath��  ��  � �����
�� 
Expf� m  #&��
�� Exffexht��  � ��� l --��������  ��  ��  � ��� r  -9��� K  -5�� ������� 0 elem  � m  03�� ���  m i s s i n g   v a l u e��  � o      ���� (0 notetitleindexdict noteTitleIndexDict� ��� l ::��������  ��  ��  � ��� r  :J   n :F I  ;F������ 0 onmutablecopy onMutableCopy �� c  ;B o  ;>���� (0 notetitleindexdict noteTitleIndexDict m  >A��
�� 
reco��  ��   o  :;���� 0 utility   o      ���� (0 notetitleindexdict noteTitleIndexDict� 	 l KK��������  ��  ��  	 

 r  KP m  KL����  o      ���� 0 i    l QQ��������  ��  ��    r  QW J  QS����   o      ���� 0 exceptionlist exceptionList  l XX��������  ��  ��    O  Xf I ^e����
�� .alfrSearnull��� ��� ctxt m  ^a �   _ _ e n   >   s a v e c a c h e��   m  X[�                                                                                      @ alis    *  Macintosh HD                   BD ����Alfred 4.app                                                   ����            ����  
 cu             Applications  /:Applications:Alfred 4.app/    A l f r e d   4 . a p p    M a c i n t o s h   H D  Applications/Alfred 4.app   / ��    l gg��������  ��  ��    !  T  g"" k  l�## $%$ l ll��������  ��  ��  % &'& r  l�()( c  l|*+* l lz,����, n  lz-.- 1  vz�
� 
EVet. l lv/�~�}/ n  lv010 4  ov�|2
�| 
cobj2 o  ru�{�{ 0 i  1 o  lo�z�z 0 allnotes allNotes�~  �}  ��  ��  + m  z{�y
�y 
TEXT) o      �x�x 0 	notetitle 	noteTitle' 343 l ���w�v�u�w  �v  �u  4 565 r  ��787 n ��9:9 I  ���t;�s�t 0 getnoteguid getNoteGuid; <�r< n  ��=>= 1  ���q
�q 
EV24> l ��?�p�o? n  ��@A@ 4  ���nB
�n 
cobjB o  ���m�m 0 i  A o  ���l�l 0 allnotes allNotes�p  �o  �r  �s  : o  ���k�k 0 utility  8 o      �j�j 0 noteguid  6 CDC l ���i�h�g�i  �h  �g  D EFE l ���fGH�f  G > 8display dialog modification date of (item i of allNotes)   H �II p d i s p l a y   d i a l o g   m o d i f i c a t i o n   d a t e   o f   ( i t e m   i   o f   a l l N o t e s )F JKJ l ���e�d�c�e  �d  �c  K LML r  ��NON n ��PQP I  ���bR�a�b 0 gettimestring getTimeStringR S�`S n  ��TUT 1  ���_
�_ 
EVmmU l ��V�^�]V n  ��WXW 4  ���\Y
�\ 
cobjY o  ���[�[ 0 i  X o  ���Z�Z 0 allnotes allNotes�^  �]  �`  �a  Q o  ���Y�Y 0 utility  O o      �X�X (0 lastestupdateddate lastestUpdatedDateM Z[Z l ���W�V�U�W  �V  �U  [ \]\ r  ��^_^ o  ���T�T 0 	notetitle 	noteTitle_ o      �S�S  0 targetfilename targetFileName] `a` l ���R�Q�P�R  �Q  �P  a bcb l ���Ode�O  d ) # Some special symbols are replaced.   e �ff F   S o m e   s p e c i a l   s y m b o l s   a r e   r e p l a c e d .c ghg r  ��iji n ��klk I  ���Nm�M�N ,0 findandreplaceintext findAndReplaceInTextm non o  ���L�L  0 targetfilename targetFileNameo pqp m  ��rr �ss  ?q t�Kt m  ��uu �vv  _�K  �M  l o  ���J�J 0 utility  j o      �I�I  0 targetfilename targetFileNameh wxw r  ��yzy n ��{|{ I  ���H}�G�H ,0 findandreplaceintext findAndReplaceInText} ~~ o  ���F�F  0 targetfilename targetFileName ��� m  ���� ���  / /� ��E� m  ���� ���  _�E  �G  | o  ���D�D 0 utility  z o      �C�C  0 targetfilename targetFileNamex ��� r  ����� n ����� I  ���B��A�B ,0 findandreplaceintext findAndReplaceInText� ��� o  ���@�@  0 targetfilename targetFileName� ��� m  ���� ���  /� ��?� m  ���� ���  _�?  �A  � o  ���>�> 0 utility  � o      �=�=  0 targetfilename targetFileName� ��� l ���<�;�:�<  �;  �:  � ��� l ���9���9  � ' ! Colon should be processed with /   � ��� B   C o l o n   s h o u l d   b e   p r o c e s s e d   w i t h   /� ��� r  ���� n � ��� I  � �8��7�8 ,0 findandreplaceintext findAndReplaceInText� ��� o  ���6�6  0 targetfilename targetFileName� ��� m  ���� ���  :� ��5� m  ���� ���  /�5  �7  � o  ���4�4 0 utility  � o      �3�3  0 targetfilename targetFileName� ��� l �2�1�0�2  �1  �0  � ��� r  ��� n ��� I  �/��.�/ 0 getvalue getValue� ��� o  	�-�- (0 notetitleindexdict noteTitleIndexDict� ��,� b  	��� m  	�� ���  #� o  �+�+ 0 	notetitle 	noteTitle�,  �.  � o  �*�* 0 utility  � o      �)�) 0 	fileindex 	fileIndex� ��� l �(�'�&�(  �'  �&  � ��� l �%���%  �   for debugging   � ���    f o r   d e b u g g i n g� ��� r   ��� o  �$�$  0 targetfilename targetFileName� o      �#�# 0 filenameonly fileNameOnly� ��� l !!�"�!� �"  �!  �   � ��� Z  !T����� = !*��� c  !&��� o  !$�� 0 	fileindex 	fileIndex� m  $%�
� 
TEXT� m  &)�� ���  m i s s i n g   v a l u e� r  -:��� b  -6��� b  -2��� o  -.�� &0 searchcontentpath searchContentPath� o  .1��  0 targetfilename targetFileName� m  25�� ��� 
 . h t m l� o      ��  0 targetfilename targetFileName�  � k  =T�� ��� r  =R��� b  =N��� b  =J��� b  =F��� b  =B��� o  =>�� &0 searchcontentpath searchContentPath� o  >A��  0 targetfilename targetFileName� m  BE�� ���  _� o  FI�� 0 	fileindex 	fileIndex� m  JM�� ��� 
 . h t m l� o      ��  0 targetfilename targetFileName� ��� l SS����  �  �  �  � ��� l UU����  �  �  � ��� l UU����  �   get thumbNailFile Path   � ��� .   g e t   t h u m b N a i l F i l e   P a t h� ��� Z  U������ = U_��� n U]��� I  V]� �� 0 
fileexists 
FileExists  �
 o  VY�	�	  0 targetfilename targetFileName�
  �  �  f  UV� m  ]^�
� boovtrue� k  b�  O b} r  h| b  ho	
	 o  hk�� 0 noteguid  
 m  kn � 
 . h t m l n       1  w{�
� 
pnam 4  ow�
� 
file o  sv��  0 targetfilename targetFileName m  be�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��    n ~� I  ���� 0 setvalue setValue  o  ��� 0 htmlcachejson htmlCacheJson  o  ��� �  0 noteguid   �� o  ������ (0 lastestupdateddate lastestUpdatedDate��  �   o  ~���� 0 utility    l ����������  ��  ��    r  ��  m  ������   o      ���� 0 j   !"! l ����������  ��  ��  " #$# r  ��%&% m  ����
�� boovfals& o      ���� &0 hasresourcefolder hasResourceFolder$ '(' l ����������  ��  ��  ( )*) O  �8+,+ k  �7-- ./. l ����������  ��  ��  / 010 r  ��232 b  ��454 o  ������  0 targetfilename targetFileName5 m  ��66 �77  . r e s o u r c e s3 o      ���� (0 resourcefoldername resourceFolderName1 898 l ����������  ��  ��  9 :;: l ����<=��  < "  ���ҽ� ������ �����ϴ� ���   = �>>    ����¤  ���T�   �tǬ�X��  ��ư; ?@? l ����������  ��  ��  @ ABA r  ��CDC n  ��EFE 1  ����
�� 
psxpF o  ������ (0 resourcefoldername resourceFolderNameD o      ���� 20 resourcefolderpoxispath resourceFolderPoxisPathB GHG l ����������  ��  ��  H IJI Q  �5KLMK k  �,NN OPO r  ��QRQ I ����S��
�� .sysoexecTEXT���     TEXTS b  ��TUT b  ��VWV m  ��XX �YY  f i n d   "W o  ������ 20 resourcefolderpoxispath resourceFolderPoxisPathU m  ��ZZ �[[ z "   - i n a m e   " * . j p g "   - o   - i n a m e   " * . p n g "   - o   - i n a m e   " * . j p e g "   |   w c   - l��  R o      ���� 0 itemcnt itemCntP \]\ l ����������  ��  ��  ] ^_^ Z  �*`a����` > ��bcb c  ��ded o  ������ 0 itemcnt itemCnte m  ����
�� 
nmbrc m  ������  a k  �&ff ghg r  ��iji m  ����
�� boovtruej o      ���� &0 hasresourcefolder hasResourceFolderh klk l ����������  ��  ��  l mnm r  ��opo I ����q��
�� .sysoexecTEXT���     TEXTq b  ��rsr b  ��tut m  ��vv �ww  ( f i n d   "u o  ������ 20 resourcefolderpoxispath resourceFolderPoxisPaths m  ��xx �yy � "   - i n a m e   " * . j p g "   - o   - i n a m e   " * . p n g "   - o   - i n a m e   " * . j p e g " )   |   h e a d   - n   1��  p o      ���� &0 thumbnailfilepath thumbNailFilePathn z{z l ����������  ��  ��  { |}| r  �~~ n � ��� I  � ������� ,0 findandreplaceintext findAndReplaceInText� ��� o  ������ &0 thumbnailfilepath thumbNailFilePath� ��� m  ���� ���  \� ���� m  ���� ���  \ \��  ��  � o  ������ 0 utility   o      ���� &0 thumbnailfilepath thumbNailFilePath} ��� l ��������  ��  ��  � ��� r  ��� n ��� I  ������� ,0 findandreplaceintext findAndReplaceInText� ��� o  	���� &0 thumbnailfilepath thumbNailFilePath� ��� m  	�� ���  "� ���� m  �� ���  \ "��  ��  � o  ���� 0 utility  � o      ���� &0 thumbnailfilepath thumbNailFilePath� ��� l ��������  ��  ��  � ���� n &��� I  &������� 0 setvalue setValue� ��� o  ���� &0 thumbnailpathjson thumbNailPathJson� ��� o  ���� 0 noteguid  � ���� o  "���� &0 thumbnailfilepath thumbNailFilePath��  ��  � o  ���� 0 utility  ��  ��  ��  _ ��� l ++��������  ��  ��  � ���� l ++��������  ��  ��  ��  L R      ������
�� .ascrerr ****      � ****��  ��  M k  44�� ��� l 44��������  ��  ��  � ��� l 44������  � , &display dialog resourceFolderPoxisPath   � ��� L d i s p l a y   d i a l o g   r e s o u r c e F o l d e r P o x i s P a t h� ���� l 44��������  ��  ��  ��  J ���� l 66��������  ��  ��  ��  , m  �����                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  * ��� l 99��������  ��  ��  � ��� r  9M��� c  9I��� l 9G������ n  9G��� 1  CG��
�� 
EVet� l 9C������ n  9C��� 4  <C���
�� 
cobj� o  ?B���� 0 i  � o  9<���� 0 allnotes allNotes��  ��  ��  ��  � m  GH��
�� 
TEXT� o      ���� $0 notetitleunicode noteTitleUnicode� ��� r  Nb��� c  N^��� l N\������ n  N\��� 1  X\��
�� 
EVmm� l NX������ n  NX��� 4  QX���
�� 
cobj� o  TW���� 0 i  � o  NQ���� 0 allnotes allNotes��  ��  ��  ��  � m  \]��
�� 
TEXT� o      �� &0 lasteditedunicode lastEditedUnicode� ��� r  cw��� c  cs��� l cq��~�}� n  cq��� 1  mq�|
�| 
EVdd� l cm��{�z� n  cm��� 4  fm�y�
�y 
cobj� o  il�x�x 0 i  � o  cf�w�w 0 allnotes allNotes�{  �z  �~  �}  � m  qr�v
�v 
TEXT� o      �u�u  0 createdunicode createdUnicode� ��� l xx�t�s�r�t  �s  �r  � ��� r  x���� b  x���� b  x���� b  x���� b  x���� b  x���� b  x���� b  x���� b  x���� b  x���� b  x���� b  x���� b  x���� b  x��� m  x{   � � < s t y l e > 
 i m g   { 
     m a x - w i d t h :   1 0 0 % ; 
     h e i g h t :   a u t o ; 
 } 
 < / s t y l e > 
 < p   i d = ' t i t l e '   s t y l e = ' f o n t - s i z e :   2 0 ;� o  {~�q�q &0 metadatafontstyle metaDataFontStyle� m  � �  > T i t l e :  � o  ���p�p 0 	notetitle 	noteTitle� m  �� � 
 < / p > 
� m  �� � P < p   i d = ' e d i t e d D a t e '   s t y l e = ' f o n t - s i z e :   2 0 ;� o  ���o�o &0 metadatafontstyle metaDataFontStyle� m  �� �		 " > L a s t   E d i t e d   I n :  � o  ���n�n &0 lasteditedunicode lastEditedUnicode� m  ��

 � ^ < / p > 
 < p   i d = ' c r e a t i o n D a t e '   s t y l e = ' f o n t - s i z e :   2 0 ;� o  ���m�m &0 metadatafontstyle metaDataFontStyle� m  �� �  > C r e a t e d   I n :  � o  ���l�l  0 createdunicode createdUnicode� m  �� � P < / p > 
 < h r   s t y l e = ' m a r g i n - b o t t o m :   1 5 ; '   / >   
� o      �k�k "0 metadataofnotes metaDataOfNotes�  n �� I  ���j�i�j 0 prependtext prependText  b  �� b  �� b  �� n �� I  ���h�g�f�h *0 getcurrentposixpath getCurrentPosixPath�g  �f   o  ���e�e 0 utility   m  �� �    s e a r c h _ c o n t e n t / o  ���d�d 0 noteguid   m  ��!! �"" 
 . h t m l #�c# o  ���b�b "0 metadataofnotes metaDataOfNotes�c  �i    f  �� $�a$ l ���`�_�^�`  �_  �^  �a  �  � k  ��%% &'& l ���]()�]  ( 6 0 Not caching successfully! (Need to be improved)   ) �** `   N o t   c a c h i n g   s u c c e s s f u l l y !   ( N e e d   t o   b e   i m p r o v e d )' +�\+ r  ��,-, b  ��./. b  ��010 o  ���[�[ 0 exceptionlist exceptionList1 o  ���Z�Z 0 filenameonly fileNameOnly/ m  ��22 �33  
- o      �Y�Y 0 exceptionlist exceptionList�\  � 454 l ���X�W�V�X  �W  �V  5 676 r  ��898 [  ��:;: o  ���U�U 0 i  ; m  ���T�T 9 o      �S�S 0 i  7 <=< l ���R�Q�P�R  �Q  �P  = >�O> Z  ��?@�N�M? l ��A�L�KA ?  ��BCB o  ���J�J 0 i  C l ��D�I�HD I ���GE�F
�G .corecnte****       ****E o  ���E�E 0 allnotes allNotes�F  �I  �H  �L  �K  @  S  ���N  �M  �O  ! FGF l �D�C�B�D  �C  �B  G HIH r  JKJ n LML I  �AN�@�A 0 keysofrecord keysOfRecordN O�?O o  	�>�> 0 htmlcachejson htmlCacheJson�?  �@  M o  �=�= 0 utility  K o      �<�< 0 keystowrite keysToWriteI PQP r  RSR n TUT I  �;V�:�;  0 valuesofrecord valuesOfRecordV W�9W o  �8�8 0 htmlcachejson htmlCacheJson�9  �:  U o  �7�7 0 utility  S o      �6�6 0 valuestowrite valuesToWriteQ XYX l �5�4�3�5  �4  �3  Y Z[Z r  .\]\ n *^_^ I   *�2`�1�2 *0 makejsonwithstrings makeJsonWithStrings` aba o   #�0�0 0 keystowrite keysToWriteb c�/c o  #&�.�. 0 valuestowrite valuesToWrite�/  �1  _ o   �-�- 0 utility  ] o      �,�, 0 jsoncontent jsonContent[ ded l //�+�*�)�+  �*  �)  e fgf n /?hih I  0?�(j�'�( "0 writetexttofile writeTextToFilej klk o  03�&�& 0 jsoncontent jsonContentl mnm b  3:opo l 36q�%�$q c  36rsr o  34�#�# 0 currentpath currentPaths m  45�"
�" 
TEXT�%  �$  p m  69tt �uu B : s e a r c h _ c o n t e n t : h t m l C a c h e L o g . j s o nn v�!v m  :;� 
�  boovtrue�!  �'  i  f  /0g w�w l @@����  �  �  �  � 5   � ��x�
� 
cappx m   � �yy �zz * c o m . e v e r n o t e . E v e r n o t e
� kfrmID  � {|{ l CC����  �  �  | }~} l CC���   - 'display dialog (count of exceptionList)   � ��� N d i s p l a y   d i a l o g   ( c o u n t   o f   e x c e p t i o n L i s t )~ ��� l CC����  �  exceptionList   � ���  e x c e p t i o n L i s t� ��� l CC����  �  �  � ��� O C`��� I I_���
� .coredelonull���     obj � l I[���� c  I[��� l IW���� 4  IW��
� 
psxf� l MV��
�	� b  MV��� n MR��� I  NR���� *0 getcurrentposixpath getCurrentPosixPath�  �  � o  MN�� 0 utility  � m  RU�� ���  C a c h i n g�
  �	  �  �  � m  WZ�
� 
alis�  �  �  � m  CF���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l aa��� �  �  �   �  
 m     ����  Q� ��� l dd��������  ��  ��  � ��� n dp��� I  ep������� 0 setvalue setValue� ��� o  eh����  0 authconfigjson authConfigJson� ��� m  hk�� ���  i n i t i a l C a c h i n g� ���� m  kl��
�� boovtrue��  ��  � o  de���� 0 utility  � ��� l qq��������  ��  ��  � ��� l qq������  �   write authConfig.json   � ��� ,   w r i t e   a u t h C o n f i g . j s o n� ��� r  q}��� n qy��� I  ry������� 0 keysofrecord keysOfRecord� ���� o  ru����  0 authconfigjson authConfigJson��  ��  � o  qr���� 0 utility  � o      ���� 0 keystowrite keysToWrite� ��� r  ~���� n ~���� I  ��������  0 valuesofrecord valuesOfRecord� ���� o  �����  0 authconfigjson authConfigJson��  ��  � o  ~���� 0 utility  � o      ���� 0 valuestowrite valuesToWrite� ��� l ����������  ��  ��  � ��� r  ����� n ����� I  ��������� *0 makejsonwithstrings makeJsonWithStrings� ��� o  ������ 0 keystowrite keysToWrite� ���� o  ������ 0 valuestowrite valuesToWrite��  ��  � o  ������ 0 utility  � o      ���� 0 jsoncontent jsonContent� ��� l ����������  ��  ��  � ��� n ����� I  ��������� "0 writetexttofile writeTextToFile� ��� o  ������ 0 jsoncontent jsonContent� ��� b  ����� l �������� c  ����� o  ������ 0 currentpath currentPath� m  ����
�� 
TEXT��  ��  � m  ���� ���   : a u t h C o n f i g . j s o n� ���� m  ����
�� boovtrue��  ��  �  f  ��� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  �   write thumbNailPath.json   � ��� 2   w r i t e   t h u m b N a i l P a t h . j s o n� ��� r  ����� n ����� I  ��������� 0 keysofrecord keysOfRecord� ���� o  ������ &0 thumbnailpathjson thumbNailPathJson��  ��  � o  ������ 0 utility  � o      ���� 0 keystowrite keysToWrite� ��� r  ����� n ����� I  ���������  0 valuesofrecord valuesOfRecord� ���� o  ������ &0 thumbnailpathjson thumbNailPathJson��  ��  � o  ������ 0 utility  � o      ���� 0 valuestowrite valuesToWrite� ��� l ����������  ��  ��  � ��� r  ����� n ��� � I  �������� *0 makejsonwithstrings makeJsonWithStrings  o  ������ 0 keystowrite keysToWrite �� o  ������ 0 valuestowrite valuesToWrite��  ��    o  ������ 0 utility  � o      ���� 0 jsoncontent jsonContent�  l ����������  ��  ��    n ��	
	 I  �������� "0 writetexttofile writeTextToFile  o  ������ 0 jsoncontent jsonContent  b  �� l ������ c  �� o  ������ 0 currentpath currentPath m  ����
�� 
TEXT��  ��   m  �� � D : s e a r c h _ c o n t e n t : t h u m b N a i l P a t h . j s o n �� m  ����
�� boovtrue��  ��  
  f  ��  l ����������  ��  ��    L  �� m  �� �    �� l ����������  ��  ��  ��  �S       �� !"#$��    ���������� "0 writetexttofile writeTextToFile�� 0 prependtext prependText�� 0 
fileexists 
FileExists
�� .aevtoappnull  �   � ****! �� ����%&���� "0 writetexttofile writeTextToFile�� ��'�� '  �������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent��  % ���������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent�� 0 theopenedfile theOpenedFile& ������������������������������� k�~
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
as  
�� 
utf8
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****��  �  
�~ .sysodlogaskr        TEXT�� f @��&E�O*�/�el E�O�e  ��jl Y hO������� O�j OeOPW &X  a j O *�/j W X  hOf" �} ��|�{()�z�} 0 prependtext prependText�| �y*�y *  �x�w�x (0 targetfilepathname targetFilePathname�w  0 thetexttowrite theTextToWrite�{  ( �v�u�t�s�r�q�v (0 targetfilepathname targetFilePathname�u  0 thetexttowrite theTextToWrite�t "0 theoriginaltext theOriginalText�s "0 referencenumber referenceNumber�r 0 estr eStr�q 0 enum eNum)  ��p�o�n�m�l ��k�j�i�h�g�f�e�d+ ��c ��b�a ��`�_�^�]
�p 
as  
�o 
utf8
�n .rdwrread****        ****�m  �l  
�k 
perm
�j .rdwropenshor       file
�i 
refn
�h 
wrat�g 
�f .rdwrwritnull���     ****
�e .rdwrclosnull���     ****�d 0 estr eStr+ �\�[�Z
�\ 
errn�[ 0 enum eNum�Z  
�c 
btns
�b 
dflt
�a 
appr
�` 
disp
�_ stic   �^ 
�] .sysodlogaskr        TEXT�z ��E�O ���l E�W X  hO��%�%E�O  ��el E�O�����j� O�j W AX  �a %�%a a kva ka a a a a  O 
�j W X  hOh# �Y ��X�W,-�V�Y 0 
fileexists 
FileExists�X �U.�U .  �T�T 0 thefile theFile�W  , �S�S 0 thefile theFile-  ��R�Q
�R 
file
�Q .coredoexnull���     ****�V � *�/j  eY fU$ �P ��O�N/0�M
�P .aevtoappnull  �   � ****�O 0 argv  �N  / �L�L 0 argv  0 ��K�J�I�H�G �F�E�D�C�B4�A�@F�?S�>`�=�<�;�:�9�8�7�6�5���4��3�2�1�0�/��.�-��,�+y�*��)�(�'��&�%�$�#�"�!�� ��������������ru�������������������
�	6��XZ��vx���������  
��!��2������������t������������K  Q�
�J 
rtyp
�I 
ctxt
�H .earsffdralis        afdr
�G 
psxp
�F .sysoloadscpt        file�E 0 utility  �D  0 getcurrentpath getCurrentPath
�C 
TEXT�B 0 currentpath currentPath�A &0 searchcontentpath searchContentPath�@ *0 getcurrentposixpath getCurrentPosixPath�? &0 htmlcachefilepath htmlCacheFilePath�> (0 authconfigfilepath authConfigFilePath�= 60 thumbnailpathjsonfilepath thumbNailPathJsonFilePath
�< 
from�; 0 jsontorecord JSONtoRecord�: 0 htmlcachejson htmlCacheJson�9  0 authconfigjson authConfigJson�8 &0 thumbnailpathjson thumbNailPathJson�7 0 onmutablecopy onMutableCopy�6  �5  �4 &0 metadatafontstyle metaDataFontStyle
�3 
kocl
�2 
cfol
�1 
insh
�0 
prdt
�/ 
pnam�. 
�- .corecrel****      � null
�, .sysoexecTEXT���     TEXT
�+ 
capp
�* kfrmID  
�) .EVRNfindnull���     ctxt�( 0 allnotes allNotes
�' .corecnte****       ****
�& 
kfil
�% 
Expf
�$ Exffexht�# 
�" .EVRNenxpnull���     ****�! 0 elem  �  (0 notetitleindexdict noteTitleIndexDict
� 
reco� 0 i  � 0 exceptionlist exceptionList
� .alfrSearnull��� ��� ctxt
� 
cobj
� 
EVet� 0 	notetitle 	noteTitle
� 
EV24� 0 getnoteguid getNoteGuid� 0 noteguid  
� 
EVmm� 0 gettimestring getTimeString� (0 lastestupdateddate lastestUpdatedDate�  0 targetfilename targetFileName� ,0 findandreplaceintext findAndReplaceInText� 0 getvalue getValue� 0 	fileindex 	fileIndex� 0 filenameonly fileNameOnly� 0 
fileexists 
FileExists
� 
file� 0 setvalue setValue�
 0 j  �	 &0 hasresourcefolder hasResourceFolder� (0 resourcefoldername resourceFolderName� 20 resourcefolderpoxispath resourceFolderPoxisPath� 0 itemcnt itemCnt
� 
nmbr� &0 thumbnailfilepath thumbNailFilePath� $0 notetitleunicode noteTitleUnicode� &0 lasteditedunicode lastEditedUnicode
� 
EVdd�   0 createdunicode createdUnicode�� "0 metadataofnotes metaDataOfNotes�� 0 prependtext prependText�� 0 keysofrecord keysOfRecord�� 0 keystowrite keysToWrite��  0 valuesofrecord valuesOfRecord�� 0 valuestowrite valuesToWrite�� *0 makejsonwithstrings makeJsonWithStrings�� 0 jsoncontent jsonContent�� "0 writetexttofile writeTextToFile
�� 
psxf
�� 
alis
�� .coredelonull���     obj �M��n)��l �%�,�%j E�O�j+ 	�&E�O��%E�O�j+ �%E` O�j+ a %E` O�j+ a %E` O ]�a _ l E` O�a _ l E` O�a _ l E` O�_ k+ E` O�_ k+ E` O�_ k+ E` OPW X  a Oa E` Oa   *a !a "a #�a $a %a &la ' (UOa )j *O)a +a ,a -0Ka .j /E` 0O_ 0j 1j  	a 2Y hO_ 0a 3�a 4a 5a 6 7Oa 8a 9lE` :O�_ :a ;&k+ E` :OkE` <OjvE` =Oa > 	a ?j @UO�hZ_ 0a A_ </a B,�&E` CO�_ 0a A_ </a D,k+ EE` FO�_ 0a A_ </a G,k+ HE` IO_ CE` JO�_ Ja Ka Lm+ ME` JO�_ Ja Na Om+ ME` JO�_ Ja Pa Qm+ ME` JO�_ Ja Ra Sm+ ME` JO�_ :a T_ C%l+ UE` VO_ JE` WO_ V�&a X  �_ J%a Y%E` JY �_ J%a Z%_ V%a [%E` JOPO)_ Jk+ \e ra ] _ Fa ^%*a __ J/a %,FUO�_ _ F_ Im+ `OkE` aOfE` bOa   �_ Ja c%E` dO_ d�,E` eO ya f_ e%a g%j *E` hO_ ha i&j SeE` bOa j_ e%a k%j *E` lO�_ la ma nm+ ME` lO�_ la oa pm+ ME` lO�_ _ F_ lm+ `Y hOPW X  hOPUO_ 0a A_ </a B,�&E` qO_ 0a A_ </a G,�&E` rO_ 0a A_ </a s,�&E` tOa u_ %a v%_ C%a w%a x%_ %a y%_ r%a z%_ %a {%_ t%a |%E` }O)�j+ a ~%_ F%a %_ }l+ �OPY _ =_ W%a �%E` =O_ <kE` <O_ <_ 0j 1 Y h[OY�iO�_ k+ �E` �O�_ k+ �E` �O�_ �_ �l+ �E` �O)_ ���&a �%em+ �OPUOa   *a ��j+ a �%/a �&j �UOPoO�_ a �em+ `O�_ k+ �E` �O�_ k+ �E` �O�_ �_ �l+ �E` �O)_ ���&a �%em+ �O�_ k+ �E` �O�_ k+ �E` �O�_ �_ �l+ �E` �O)_ ���&a �%em+ �Oa �OPascr  ��ޭ