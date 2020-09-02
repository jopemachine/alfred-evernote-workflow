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
�R .aevtoappnull  �   � **** � o      �P�P 0 argv  �Q   � k    � � �    l     �O�N�M�O  �N  �M    l     �L�L      very long time (24 hours)    � 4   v e r y   l o n g   t i m e   ( 2 4   h o u r s )  t    =	
	 k   <  l   �K�J�I�K  �J  �I    r     I   �H�G
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
TEXT' o      �4�4 0 currentpath currentPath% ,-, l     �3�2�1�3  �2  �1  - ./. r     %010 b     #232 o     !�0�0 0 currentpath currentPath3 m   ! "44 �55   : s e a r c h _ c o n t e n t :1 o      �/�/ &0 searchcontentpath searchContentPath/ 676 l  & &�.�-�,�.  �-  �,  7 898 l  & &�+:;�+  : #  Cache json path	(posix path)   ; �<< :   C a c h e   j s o n   p a t h 	 ( p o s i x   p a t h )9 =>= r   & 1?@? b   & -ABA l  & +C�*�)C n  & +DED I   ' +�(�'�&�( *0 getcurrentposixpath getCurrentPosixPath�'  �&  E o   & '�%�% 0 utility  �*  �)  B m   + ,FF �GG @ s e a r c h _ c o n t e n t / h t m l C a c h e L o g . j s o n@ o      �$�$ &0 htmlcachefilepath htmlCacheFilePath> HIH l  2 2�#�"�!�#  �"  �!  I JKJ r   2 ?LML b   2 ;NON l  2 7P� �P n  2 7QRQ I   3 7���� *0 getcurrentposixpath getCurrentPosixPath�  �  R o   2 3�� 0 utility  �   �  O m   7 :SS �TT  a u t h C o n f i g . j s o nM o      �� (0 authconfigfilepath authConfigFilePathK UVU l  @ @����  �  �  V WXW r   @ MYZY b   @ I[\[ l  @ E]��] n  @ E^_^ I   A E���� *0 getcurrentposixpath getCurrentPosixPath�  �  _ o   @ A�� 0 utility  �  �  \ m   E H`` �aa B s e a r c h _ c o n t e n t / t h u m b N a i l P a t h . j s o nZ o      �� 60 thumbnailpathjsonfilepath thumbNailPathJsonFilePathX bcb l  N N����  �  �  c ded l  N N�fg�  f , & todo: json? ?? ??? ??? ??? ??? ??? ?.   g �hh L   t o d o :   j s o n�t  �DŴ  ǈ�p��  ����t  �����t  ��0�  �з�   �� .e iji l  N N�kl�  k   todo: 1763 error   l �mm "   t o d o :   1 7 6 3   e r r o rj non Q   N �pqrp k   Q �ss tut l  Q Q�
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
�� .sysoexecTEXT���     TEXT� m   � ��� ��� > o p e n   / A p p l i c a t i o n s / E v e r n o t e . a p p��  � ��� l  � ���������  ��  ��  � ��� O   ���� k   ��� ��� r   ���� l  � ������� I  � ������
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
 cu             Applications  /:Applications:Alfred 4.app/    A l f r e d   4 . a p p    M a c i n t o s h   H D  Applications/Alfred 4.app   / ��    l gg��������  ��  ��    !  T  g�"" k  l�## $%$ l ll��������  ��  ��  % &'& r  l�()( c  l|*+* l lz,����, n  lz-.- 1  vz�
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
�� boovfals& o      ���� &0 hasresourcefolder hasResourceFolder$ '(' l ����������  ��  ��  ( )*) O  �+,+ k  �-- ./. l ����������  ��  ��  / 010 r  ��232 b  ��454 o  ������  0 targetfilename targetFileName5 m  ��66 �77  . r e s o u r c e s3 o      ���� (0 resourcefoldername resourceFolderName1 898 l ����������  ��  ��  9 :;: l ����<=��  <   ??? ??? ???? ??   = �>>    ����¤  ���T�   �tǬ�X��  ��ư; ?@? l ����������  ��  ��  @ ABA r  ��CDC n  ��EFE 1  ����
�� 
psxpF o  ������ (0 resourcefoldername resourceFolderNameD o      ���� 20 resourcefolderpoxispath resourceFolderPoxisPathB GHG l ����������  ��  ��  H IJI Q  �KLMK k  �NN OPO r  ��QRQ I ����S��
�� .sysoexecTEXT���     TEXTS b  ��TUT b  ��VWV m  ��XX �YY  f i n d   "W o  ������ 20 resourcefolderpoxispath resourceFolderPoxisPathU m  ��ZZ �[[ z "   - i n a m e   " * . j p g "   - o   - i n a m e   " * . p n g "   - o   - i n a m e   " * . j p e g "   |   w c   - l��  R o      ���� 0 itemcnt itemCntP \]\ l ����������  ��  ��  ] ^_^ Z  �`a����` > ��bcb c  ��ded o  ������ 0 itemcnt itemCnte m  ����
�� 
nmbrc m  ������  a k  � ff ghg r  ��iji m  ����
�� boovtruej o      ���� &0 hasresourcefolder hasResourceFolderh klk l ����������  ��  ��  l mnm r  ��opo I ����q��
�� .sysoexecTEXT���     TEXTq b  ��rsr b  ��tut m  ��vv �ww  ( f i n d   "u o  ������ 20 resourcefolderpoxispath resourceFolderPoxisPaths m  ��xx �yy � "   - i n a m e   " * . j p g "   - o   - i n a m e   " * . p n g "   - o   - i n a m e   " * . j p e g " )   |   h e a d   - n   1��  p o      ���� &0 thumbnailfilepath thumbNailFilePathn z{z l ����������  ��  ��  { |��| n � }~} I  � ������ 0 setvalue setValue ��� o  ������ &0 thumbnailpathjson thumbNailPathJson� ��� o  ������ 0 noteguid  � ���� o  ������ &0 thumbnailfilepath thumbNailFilePath��  ��  ~ o  ������ 0 utility  ��  ��  ��  _ ��� l ��������  ��  ��  � ���� l ��������  ��  ��  ��  L R      ������
�� .ascrerr ****      � ****��  ��  M k  �� ��� l ��������  ��  ��  � ��� l ������  � , &display dialog resourceFolderPoxisPath   � ��� L d i s p l a y   d i a l o g   r e s o u r c e F o l d e r P o x i s P a t h� ���� l ��������  ��  ��  ��  J ���� l ��������  ��  ��  ��  , m  �����                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  * ��� l ��������  ��  ��  � ��� r  '��� c  #��� l !������ n  !��� 1  !��
�� 
EVet� l ������ n  ��� 4  ���
�� 
cobj� o  ���� 0 i  � o  ���� 0 allnotes allNotes��  ��  ��  ��  � m  !"��
�� 
TEXT� o      ���� $0 notetitleunicode noteTitleUnicode� ��� r  (<��� c  (8��� l (6������ n  (6��� 1  26��
�� 
EVmm� l (2������ n  (2��� 4  +2���
�� 
cobj� o  .1���� 0 i  � o  (+���� 0 allnotes allNotes��  ��  ��  ��  � m  67��
�� 
TEXT� o      ���� &0 lasteditedunicode lastEditedUnicode� ��� r  =Q��� c  =M��� l =K������ n  =K��� 1  GK��
�� 
EVdd� l =G������ n  =G��� 4  @G���
�� 
cobj� o  CF���� 0 i  � o  =@���� 0 allnotes allNotes��  ��  ��  ��  � m  KL��
�� 
TEXT� o      ����  0 createdunicode createdUnicode� ��� l RR��������  ��  ��  � ��� r  R���� b  R���� b  R���� b  R���� b  R}��� b  Ry��� b  Ru��� b  Rq��� b  Rm��� b  Ri��� b  Re��� b  Ra��� b  R]��� b  RY��� m  RU�� ��� � < s t y l e > 
 i m g   { 
     m a x - w i d t h :   1 0 0 % ; 
     h e i g h t :   a u t o ; 
 } 
 < / s t y l e > 
 < p   i d = ' t i t l e '   s t y l e = ' f o n t - s i z e :   2 0 ;� o  UX���� &0 metadatafontstyle metaDataFontStyle� m  Y\�� ���  > T i t l e :  � o  ]`���� 0 	notetitle 	noteTitle� m  ad�� ��� 
 < / p > 
� m  eh�� ��� P < p   i d = ' e d i t e d D a t e '   s t y l e = ' f o n t - s i z e :   2 0 ;� o  il���� &0 metadatafontstyle metaDataFontStyle� m  mp�� ��� " > L a s t   E d i t e d   I n :  � o  qt���� &0 lasteditedunicode lastEditedUnicode� m  ux�� ��� ^ < / p > 
 < p   i d = ' c r e a t i o n D a t e '   s t y l e = ' f o n t - s i z e :   2 0 ;� o  y|�� &0 metadatafontstyle metaDataFontStyle� m  }��� ���  > C r e a t e d   I n :  � o  ���~�~  0 createdunicode createdUnicode� m  ���� ��� P < / p > 
 < h r   s t y l e = ' m a r g i n - b o t t o m :   1 5 ; '   / >   
� o      �}�} "0 metadataofnotes metaDataOfNotes� ��� n ����� I  ���|��{�| 0 prependtext prependText� ��� b  ����� b  ����� b  ����� n ����� I  ���z�y�x�z *0 getcurrentposixpath getCurrentPosixPath�y  �x  � o  ���w�w 0 utility  � m  ���� ���  s e a r c h _ c o n t e n t /� o  ���v�v 0 noteguid  � m  ���� ��� 
 . h t m l� ��u� o  ���t�t "0 metadataofnotes metaDataOfNotes�u  �{  �  f  ���  �s  l ���r�q�p�r  �q  �p  �s  �  � k  ��  l ���o�o   6 0 Not caching successfully! (Need to be improved)    � `   N o t   c a c h i n g   s u c c e s s f u l l y !   ( N e e d   t o   b e   i m p r o v e d ) �n r  ��	 b  ��

 b  �� o  ���m�m 0 exceptionlist exceptionList o  ���l�l 0 filenameonly fileNameOnly m  �� �  
	 o      �k�k 0 exceptionlist exceptionList�n  �  l ���j�i�h�j  �i  �h    r  �� [  �� o  ���g�g 0 i   m  ���f�f  o      �e�e 0 i    l ���d�c�b�d  �c  �b   �a Z  ���`�_ l ���^�] ?  �� o  ���\�\ 0 i   l �� �[�Z  I ���Y!�X
�Y .corecnte****       ****! o  ���W�W 0 allnotes allNotes�X  �[  �Z  �^  �]    S  ���`  �_  �a  ! "#" l ���V�U�T�V  �U  �T  # $%$ r  ��&'& n ��()( I  ���S*�R�S 0 keysofrecord keysOfRecord* +�Q+ o  ���P�P 0 htmlcachejson htmlCacheJson�Q  �R  ) o  ���O�O 0 utility  ' o      �N�N 0 keystowrite keysToWrite% ,-, r  ��./. n ��010 I  ���M2�L�M  0 valuesofrecord valuesOfRecord2 3�K3 o  ���J�J 0 htmlcachejson htmlCacheJson�K  �L  1 o  ���I�I 0 utility  / o      �H�H 0 valuestowrite valuesToWrite- 454 l ���G�F�E�G  �F  �E  5 676 r  �898 n �:;: I  ��D<�C�D *0 makejsonwithstrings makeJsonWithStrings< =>= o  ���B�B 0 keystowrite keysToWrite> ?�A? o  � �@�@ 0 valuestowrite valuesToWrite�A  �C  ; o  ���?�? 0 utility  9 o      �>�> 0 jsoncontent jsonContent7 @A@ l 		�=�<�;�=  �<  �;  A BCB n 	DED I  
�:F�9�: "0 writetexttofile writeTextToFileF GHG o  
�8�8 0 jsoncontent jsonContentH IJI b  KLK l M�7�6M c  NON o  �5�5 0 currentpath currentPathO m  �4
�4 
TEXT�7  �6  L m  PP �QQ B : s e a r c h _ c o n t e n t : h t m l C a c h e L o g . j s o nJ R�3R m  �2
�2 boovtrue�3  �9  E  f  	
C S�1S l �0�/�.�0  �/  �.  �1  � 5   � ��-T�,
�- 
cappT m   � �UU �VV * c o m . e v e r n o t e . E v e r n o t e
�, kfrmID  � WXW l �+�*�)�+  �*  �)  X YZY l �([\�(  [ - 'display dialog (count of exceptionList)   \ �]] N d i s p l a y   d i a l o g   ( c o u n t   o f   e x c e p t i o n L i s t )Z ^_^ l �'`a�'  `  exceptionList   a �bb  e x c e p t i o n L i s t_ cdc l �&�%�$�&  �%  �$  d efe O :ghg I #9�#i�"
�# .coredelonull���     obj i l #5j�!� j c  #5klk l #1m��m 4  #1�n
� 
psxfn l '0o��o b  '0pqp n ',rsr I  (,���� *0 getcurrentposixpath getCurrentPosixPath�  �  s o  '(�� 0 utility  q m  ,/tt �uu  C a c h i n g�  �  �  �  l m  14�
� 
alis�!  �   �"  h m   vv�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  f w�w l ;;����  �  �  �  
 m     ��  Q� xyx l >>����  �  �  y z{z n >J|}| I  ?J�~�� 0 setvalue setValue~ � o  ?B��  0 authconfigjson authConfigJson� ��� m  BE�� ���  i n i t i a l C a c h i n g� ��
� m  EF�	
�	 boovtrue�
  �  } o  >?�� 0 utility  { ��� l KK����  �  �  � ��� l KK����  �   write authConfig.json   � ��� ,   w r i t e   a u t h C o n f i g . j s o n� ��� r  KW��� n KS��� I  LS���� 0 keysofrecord keysOfRecord� ��� o  LO� �   0 authconfigjson authConfigJson�  �  � o  KL���� 0 utility  � o      ���� 0 keystowrite keysToWrite� ��� r  Xd��� n X`��� I  Y`�������  0 valuesofrecord valuesOfRecord� ���� o  Y\����  0 authconfigjson authConfigJson��  ��  � o  XY���� 0 utility  � o      ���� 0 valuestowrite valuesToWrite� ��� l ee��������  ��  ��  � ��� r  et��� n ep��� I  fp������� *0 makejsonwithstrings makeJsonWithStrings� ��� o  fi���� 0 keystowrite keysToWrite� ���� o  il���� 0 valuestowrite valuesToWrite��  ��  � o  ef���� 0 utility  � o      ���� 0 jsoncontent jsonContent� ��� l uu��������  ��  ��  � ��� n u���� I  v�������� "0 writetexttofile writeTextToFile� ��� o  vy���� 0 jsoncontent jsonContent� ��� b  y���� l y|������ c  y|��� o  yz���� 0 currentpath currentPath� m  z{��
�� 
TEXT��  ��  � m  |�� ���   : a u t h C o n f i g . j s o n� ���� m  ����
�� boovtrue��  ��  �  f  uv� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  �   write thumbNailPath.json   � ��� 2   w r i t e   t h u m b N a i l P a t h . j s o n� ��� r  ����� n ����� I  ��������� 0 keysofrecord keysOfRecord� ���� o  ������ &0 thumbnailpathjson thumbNailPathJson��  ��  � o  ������ 0 utility  � o      ���� 0 keystowrite keysToWrite� ��� r  ����� n ����� I  ���������  0 valuesofrecord valuesOfRecord� ���� o  ������ &0 thumbnailpathjson thumbNailPathJson��  ��  � o  ������ 0 utility  � o      ���� 0 valuestowrite valuesToWrite� ��� l ����������  ��  ��  � ��� r  ����� n ����� I  ��������� *0 makejsonwithstrings makeJsonWithStrings� ��� o  ������ 0 keystowrite keysToWrite� ���� o  ������ 0 valuestowrite valuesToWrite��  ��  � o  ������ 0 utility  � o      ���� 0 jsoncontent jsonContent� ��� l ����������  ��  ��  � ��� n ����� I  ��������� "0 writetexttofile writeTextToFile� ��� o  ������ 0 jsoncontent jsonContent� ��� b  ����� l �������� c  ����� o  ������ 0 currentpath currentPath� m  ����
�� 
TEXT��  ��  � m  ���� ��� D : s e a r c h _ c o n t e n t : t h u m b N a i l P a t h . j s o n� ���� m  ����
�� boovtrue��  ��  �  f  ��� ��� l ����������  ��  ��  � ��� L  ���� m  ���� ���   � ���� l ����������  ��  ��  ��  �S       ������ ��������������  � ���������������������������������� "0 writetexttofile writeTextToFile�� 0 prependtext prependText�� 0 
fileexists 
FileExists
�� .aevtoappnull  �   � ****�� 0 utility  �� 0 currentpath currentPath�� &0 searchcontentpath searchContentPath�� &0 htmlcachefilepath htmlCacheFilePath�� (0 authconfigfilepath authConfigFilePath�� 60 thumbnailpathjsonfilepath thumbNailPathJsonFilePath��  ��  ��  ��  ��  ��  � �� �������� "0 writetexttofile writeTextToFile�� ��	�� 	  �������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent��   ���������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent�� 0 theopenedfile theOpenedFile ������������������������������� k�~
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
�~ .sysodlogaskr        TEXT�� f @��&E�O*�/�el E�O�e  ��jl Y hO������� O�j OeOPW &X  a j O *�/j W X  hOf� �} ��|�{
�z�} 0 prependtext prependText�| �y�y   �x�w�x (0 targetfilepathname targetFilePathname�w  0 thetexttowrite theTextToWrite�{  
 �v�u�t�s�r�q�v (0 targetfilepathname targetFilePathname�u  0 thetexttowrite theTextToWrite�t "0 theoriginaltext theOriginalText�s "0 referencenumber referenceNumber�r 0 estr eStr�q 0 enum eNum  ��p�o�n�m�l ��k�j�i�h�g�f�e�d ��c ��b�a ��`�_�^�]
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
�e .rdwrclosnull���     ****�d 0 estr eStr �\�[�Z
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
�j W X  hOh� �Y ��X�W�V�Y 0 
fileexists 
FileExists�X �U�U   �T�T 0 thefile theFile�W   �S�S 0 thefile theFile  ��R�Q
�R 
file
�Q .coredoexnull���     ****�V � *�/j  eY fU  �P ��O�N�M
�P .aevtoappnull  �   � ****�O 0 argv  �N   �L�L 0 argv   ��K�J�I�H�G �F�E�D�C�B4�A�@F�?S�>`�=�<�;�:�9�8�7�6�5���4��3�2�1�0�/��.�-��,�+U�*��)�(�'��&�%�$�#�"�!�� ��������������ru�������������������
�	6��XZ��vx����� ��������������������������P����t���������K  Q�
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
�� .coredelonull���     obj �M��n)��l �%�,�%j E�O�j+ 	�&E�O��%E�O�j+ �%E` O�j+ a %E` O�j+ a %E` O ]�a _ l E` O�a _ l E` O�a _ l E` O�_ k+ E` O�_ k+ E` O�_ k+ E` OPW X  a Oa E` Oa   *a !a "a #�a $a %a &la ' (UOa )j *O)a +a ,a -0%a .j /E` 0O_ 0j 1j  	a 2Y hO_ 0a 3�a 4a 5a 6 7Oa 8a 9lE` :O�_ :a ;&k+ E` :OkE` <OjvE` =Oa > 	a ?j @UOvhZ_ 0a A_ </a B,�&E` CO�_ 0a A_ </a D,k+ EE` FO�_ 0a A_ </a G,k+ HE` IO_ CE` JO�_ Ja Ka Lm+ ME` JO�_ Ja Na Om+ ME` JO�_ Ja Pa Qm+ ME` JO�_ Ja Ra Sm+ ME` JO�_ :a T_ C%l+ UE` VO_ JE` WO_ V�&a X  �_ J%a Y%E` JY �_ J%a Z%_ V%a [%E` JOPO)_ Jk+ \e La ] _ Fa ^%*a __ J/a %,FUO�_ _ F_ Im+ `OkE` aOfE` bOa   t_ Ja c%E` dO_ d�,E` eO Sa f_ e%a g%j *E` hO_ ha i&j -eE` bOa j_ e%a k%j *E` lO�_ _ F_ lm+ `Y hOPW X  hOPUO_ 0a A_ </a B,�&E` mO_ 0a A_ </a G,�&E` nO_ 0a A_ </a o,�&E` pOa q_ %a r%_ C%a s%a t%_ %a u%_ n%a v%_ %a w%_ p%a x%E` yO)�j+ a z%_ F%a {%_ yl+ |OPY _ =_ W%a }%E` =O_ <kE` <O_ <_ 0j 1 Y h[OY��O�_ k+ ~E` O�_ k+ �E` �O�_ _ �l+ �E` �O)_ ���&a �%em+ �OPUOa   *a ��j+ a �%/a �&j �UOPoO�_ a �em+ `O�_ k+ ~E` O�_ k+ �E` �O�_ _ �l+ �E` �O)_ ���&a �%em+ �O�_ k+ ~E` O�_ k+ �E` �O�_ _ �l+ �E` �O)_ ���&a �%em+ �Oa �OP �� ��   k        x     ������   4    ��
�� 
frmk m     �  F o u n d a t i o n��    x    ������   2   ��
�� 
osax��     l     ��!"��  ! T N------------------------------------------------------------------------------   " �## � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  $%$ j    ��&�� 0 ca  & N    '' m    ��
�� misccura% ()( j     ��*�� 0 nsdata NSData* N    ++ n   ,-, o    ���� 0 nsdata NSData- o    ���� 0 ca  ) ./. j   ! &��0�� 0 nsdictionary NSDictionary0 N   ! %11 n  ! $232 o   " $���� 0 nsdictionary NSDictionary3 o   ! "���� 0 ca  / 454 j   ' ,��6�� *0 nsmutabledictionary NSMutableDictionary6 N   ' +77 n  ' *898 o   ( *���� *0 nsmutabledictionary NSMutableDictionary9 o   ' (���� 0 ca  5 :;: j   - 2��<�� *0 nsjsonserialization NSJSONSerialization< N   - 1== n  - 0>?> o   . 0���� *0 nsjsonserialization NSJSONSerialization? o   - .���� 0 ca  ; @A@ j   3 8��B�� 0 nsstring NSStringB N   3 7CC n  3 6DED o   4 6���� 0 nsstring NSStringE o   3 4���� 0 ca  A FGF j   9 <��H�� ,0 nsutf8stringencoding NSUTF8StringEncodingH N   9 ;II m   9 :���� G JKJ l     ��LM��  L T N------------------------------------------------------------------------------   M �NN � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -K OPO i   = @QRQ I      ����S�� 0 jsontorecord JSONtoRecord��  S ��T��
�� 
fromT o      ���� 0 fp  ��  R k     VUU VWV q      XX ������ 0 fp  ��  W YZY l     ��������  ��  ��  Z [\[ r     ]^] n    
_`_ I    
��a���� 20 datawithcontentsoffile_ dataWithContentsOfFile_a b��b o    ���� 0 fp  ��  ��  ` o     ���� 0 nsdata NSData^ o      ���� 0 jsondata JSONdata\ cdc l   ��������  ��  ��  d efe r    (ghg l   i����i n   jkj l 	  l����l I    ��m���� F0 !jsonobjectwithdata_options_error_ !JSONObjectWithData_options_error_m non l 
  p����p o    ���� 0 jsondata JSONdata��  ��  o qrq l 
  s����s m    ����  ��  ��  r t��t l   u����u m    ��
�� 
obj ��  ��  ��  ��  ��  ��  k o    ���� *0 nsjsonserialization NSJSONSerialization��  ��  h v      vv wxw o      ���� 0 x  x y��y o      ���� 0 e E��  f z{z l  ) )��������  ��  ��  { |}| Z  ) 7~����~ >   ) ,��� o   ) *���� 0 e E� m   * +��
�� 
msng R   / 3�����
�� .ascrerr ****      � ****� o   1 2���� 0 e E��  ��  ��  } ��� l  8 8��������  ��  ��  � ��� O  8 R��� Z  < Q������� n  < F��� I   = F�������  0 iskindofclass_ isKindOfClass_� ���� o   = B���� 0 nsdictionary NSDictionary��  ��  �  g   < =� l 	 I M������ L   I M�� c   I L���  g   I J� m   J K��
�� 
reco��  ��  ��  ��  � o   8 9���� 0 x  � ��� l  S S��������  ��  ��  � ���� c   S V��� o   S T���� 0 x  � m   T U��
�� 
list��  P ��� l     ������  � T N------------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ��������  ��  ��  � ��� i   A D��� I      ������� "0 writetexttofile writeTextToFile� ��� o      ���� 0 thetext theText� ��� o      ���� 0 thefile theFile� ���� o      ���� 40 overwriteexistingcontent overwriteExistingContent��  ��  � Q     [���� k    <�� ��� l   ��������  ��  ��  � ��� l   ������  � #  Convert the file to a string   � ��� :   C o n v e r t   t h e   f i l e   t o   a   s t r i n g� ��� r    ��� c    ��� o    ���� 0 thefile theFile� m    ��
�� 
TEXT� o      ���� 0 thefile theFile� ��� l  	 	��������  ��  ��  � ��� l  	 	����  �    Open the file for writing   � ��� 4   O p e n   t h e   f i l e   f o r   w r i t i n g� ��� r   	 ��� I  	 �~��
�~ .rdwropenshor       file� 4   	 �}�
�} 
file� o    �|�| 0 thefile theFile� �{��z
�{ 
perm� m    �y
�y boovtrue�z  � o      �x�x 0 theopenedfile theOpenedFile� ��� l   �w�v�u�w  �v  �u  � ��� l   �t���t  � 6 0 Clear the file if content should be overwritten   � ��� `   C l e a r   t h e   f i l e   i f   c o n t e n t   s h o u l d   b e   o v e r w r i t t e n� ��� Z   '���s�r� =   ��� o    �q�q 40 overwriteexistingcontent overwriteExistingContent� m    �p
�p boovtrue� I   #�o��
�o .rdwrseofnull���     ****� o    �n�n 0 theopenedfile theOpenedFile� �m��l
�m 
set2� m    �k�k  �l  �s  �r  � ��� l  ( (�j�i�h�j  �i  �h  � ��� l  ( (�g���g  � ( " Write the new content to the file   � ��� D   W r i t e   t h e   n e w   c o n t e n t   t o   t h e   f i l e� ��� I  ( 1�f��
�f .rdwrwritnull���     ****� o   ( )�e�e 0 thetext theText� �d��
�d 
refn� o   * +�c�c 0 theopenedfile theOpenedFile� �b��a
�b 
wrat� m   , -�`
�` rdwreof �a  � ��� l  2 2�_�^�]�_  �^  �]  � ��� l  2 2�\���\  �   Close the file   � ���    C l o s e   t h e   f i l e� ��� I  2 7�[��Z
�[ .rdwrclosnull���     ****� o   2 3�Y�Y 0 theopenedfile theOpenedFile�Z  � ��� l  8 8�X�W�V�X  �W  �V  � ��� l  8 8�U���U  � > 8 Return a boolean indicating that writing was successful   � ��� p   R e t u r n   a   b o o l e a n   i n d i c a t i n g   t h a t   w r i t i n g   w a s   s u c c e s s f u l� ��� L   8 :�� m   8 9�T
�T boovtrue� ��� l  ; ;�S�R�Q�S  �R  �Q  � ��P� l  ; ;�O���O  �   Handle a write error   � �   *   H a n d l e   a   w r i t e   e r r o r�P  � R      �N�M�L
�N .ascrerr ****      � ****�M  �L  � k   D [  l  D D�K�J�I�K  �J  �I    l  D D�H�H     Close the file    �    C l o s e   t h e   f i l e 	
	 Q   D X�G I  G O�F�E
�F .rdwrclosnull���     **** 4   G K�D
�D 
file o   I J�C�C 0 thefile theFile�E   R      �B�A�@
�B .ascrerr ****      � ****�A  �@  �G  
  l  Y Y�?�>�=�?  �>  �=    l  Y Y�<�<   6 0 Return a boolean indicating that writing failed    � `   R e t u r n   a   b o o l e a n   i n d i c a t i n g   t h a t   w r i t i n g   f a i l e d �; L   Y [ m   Y Z�:
�: boovfals�;  �  l     �9�8�7�9  �8  �7    i   E H I      �6�5�6 	0 split     o      �4�4 	0 input    !�3! o      �2�2 0 x  �3  �5   k     "" #$# Z    %&�1�0% H     '' E     ()( o     �/�/ 	0 input  ) o    �.�. 0 x  & L    ** J    
++ ,�-, o    �,�, 	0 input  �-  �1  �0  $ -.- r    /0/ o    �+�+ 0 x  0 1    �*
�* 
txdl. 1�)1 n    232 2   �(
�( 
citm3 o    �'�' 	0 input  �)   454 l     �&�%�$�&  �%  �$  5 676 i   I L898 I      �#:�"�# 0 join  : ;<; o      �!�! 	0 input  < =� = o      �� 0 x  �   �"  9 k     	>> ?@? r     ABA o     �� 0 x  B 1    �
� 
txdl@ C�C c    	DED o    �� 	0 input  E m    �
� 
ctxt�  7 FGF l     ����  �  �  G HIH i   M PJKJ I      ����  0 getcurrentpath getCurrentPath�  �  K k     fLL MNM r     	OPO c     QRQ l    S��S I    �T�
� .earsffdralis        afdrT  f     �  �  �  R m    �
� 
TEXTP o      �� 20 currentpathwithfilename currentPathWithFileNameN UVU l  
 
����  �  �  V WXW r   
 YZY n  
 [\[ I    �
]�	�
 	0 split  ] ^_^ o    �� 20 currentpathwithfilename currentPathWithFileName_ `�` m    aa �bb  :�  �	  \  f   
 Z o      �� "0 currentpathlist currentPathListX cdc l   ����  �  �  d efe r    ghg m    ii �jj  h o      �� 0 currentpath currentPathf klk l   �� ���  �   ��  l mnm r    opo m    ���� p o      ���� 0 j  n qrq T    css k   ! ^tt uvu Z   ! 5wx����w >  ! $yzy o   ! "���� 0 currentpath currentPathz m   " #{{ �||  x r   ' 1}~} b   ' /� b   ' *��� o   ' (���� 0 currentpath currentPath� m   ( )�� ���  :� l  * .������ n   * .��� 4   + .���
�� 
cobj� o   , -���� 0 j  � o   * +���� "0 currentpathlist currentPathList��  ��  ~ l     ������ o      ���� 0 currentpath currentPath��  ��  ��  ��  v ��� l  6 6��������  ��  ��  � ��� Z   6 F������� =  6 9��� o   6 7���� 0 currentpath currentPath� m   7 8�� ���  � r   < B��� l  < @������ n   < @��� 4   = @���
�� 
cobj� o   > ?���� 0 j  � o   < =���� "0 currentpathlist currentPathList��  ��  � l     ������ o      ���� 0 currentpath currentPath��  ��  ��  ��  � ��� l  G G��������  ��  ��  � ��� r   G L��� [   G J��� o   G H���� 0 j  � m   H I���� � o      ���� 0 j  � ���� Z  M ^������� ?   M V��� o   M N���� 0 j  � l  N U������ \   N U��� l  N S������ I  N S�����
�� .corecnte****       ****� o   N O���� "0 currentpathlist currentPathList��  ��  ��  � m   S T���� ��  ��  �  S   Y Z��  ��  ��  r ��� l  d d��������  ��  ��  � ���� L   d f�� o   d e���� 0 currentpath currentPath��  I ��� l     ��������  ��  ��  � ��� i   Q T��� I      �������� *0 getcurrentposixpath getCurrentPosixPath��  ��  � k     �� ��� O     ��� r    ��� c    ��� n    ��� m   	 ��
�� 
ctnr� l   	������ I   	�����
�� .earsffdralis        afdr�  f    ��  ��  ��  � m    ��
�� 
alis� o      ���� 0 current_path0  � m     ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� r    ��� l   ������ n    ��� 1    ��
�� 
psxp� o    ���� 0 current_path0  ��  ��  � o      ���� 0 current_path1  � ���� L    �� o    ���� 0 current_path1  ��  � ��� l     ��������  ��  ��  � ��� i   U X��� I      ������� 0 map  � ��� o      ���� 0 f  � ���� o      ���� 0 thedata theData��  ��  � k     .�� ��� h     ����� 0 s  � j     ����� 0 ff  � o     ���� 0 f  � ��� r    ��� J    
����  � o      ���� 0 	theresult 	theResult� ��� X    +����� r    &��� n   #��� I    #������� 0 ff  � ���� o    ���� 0 anitem anItem��  ��  � o    ���� 0 s  � n      ���  ;   $ %� o   # $���� 0 	theresult 	theResult�� 0 anitem anItem� o    ���� 0 thedata theData� ���� L   , .�� o   , -���� 0 	theresult 	theResult��  � ��� l     ��������  ��  ��  � ��� i   Y \��� I      ������� 0 keysofrecord keysOfRecord� ���� o      ���� 0 rec  ��  ��  � k     �� ��� r     ��� m     ��
�� misccura� o      ���� 0 ca  � ���� L    �� c    ��� n      I    �������� 0 allkeys allKeys��  ��   l   ���� n    I    ������ 60 dictionarywithdictionary_ dictionaryWithDictionary_ �� o    ���� 0 rec  ��  ��   n    o    ���� 0 nsdictionary NSDictionary o    ���� 0 ca  ��  ��  � m    ��
�� 
list��  � 	
	 l     ��������  ��  ��  
  i   ] ` I      ������  0 valuesofrecord valuesOfRecord �� o      ���� 0 rec  ��  ��   k       r      m     ��
�� misccura o      ���� 0 ca   �� L     c     n    I    ����~�� 0 	allvalues 	allValues�  �~   l   �}�| n    I    �{�z�{ 60 dictionarywithdictionary_ dictionaryWithDictionary_  �y  o    �x�x 0 rec  �y  �z   n   !"! o    �w�w 0 nsdictionary NSDictionary" o    �v�v 0 ca  �}  �|   m    �u
�u 
list��   #$# l     �t�s�r�t  �s  �r  $ %&% i   a d'(' I      �q)�p�q 0 getvalue getValue) *+* o      �o�o 0 rec  + ,�n, o      �m�m 0 selectedkey selectedKey�n  �p  ( k     -- ./. r     010 m     �l
�l misccura1 o      �k�k 0 ca  / 2�j2 L    33 c    454 l   6�i�h6 n   787 I    �g9�f�g 0 valueforkey_ valueForKey_9 :�e: l   ;�d�c; o    �b�b 0 selectedkey selectedKey�d  �c  �e  �f  8 l   <�a�`< n   =>= I    �_?�^�_ 60 dictionarywithdictionary_ dictionaryWithDictionary_? @�]@ o    �\�\ 0 rec  �]  �^  > n   ABA o    �[�[ 0 nsdictionary NSDictionaryB o    �Z�Z 0 ca  �a  �`  �i  �h  5 m    �Y
�Y 
TEXT�j  & CDC l     �X�W�V�X  �W  �V  D EFE i   e hGHG I      �UI�T�U 0 setvalue setValueI JKJ o      �S�S 0 mutabledict mutableDictK LML o      �R�R 0 selectedkey selectedKeyM N�QN o      �P�P 0 selectedvalue selectedValue�Q  �T  H n    OPO I    �OQ�N�O $0 setvalue_forkey_ setValue_forKey_Q RSR o    �M�M 0 selectedvalue selectedValueS T�LT o    �K�K 0 selectedkey selectedKey�L  �N  P o     �J�J 0 mutabledict mutableDictF UVU l     �I�H�G�I  �H  �G  V WXW i   i lYZY I      �F�E�D�F  0 getcurrentdate getCurrentDate�E  �D  Z L     [[ c     \]\ l    
^�C�B^ I     
�A_�@�A 0 gettimestring getTimeString_ `�?` I   �>�=�<
�> .misccurdldt    ��� null�=  �<  �?  �@  �C  �B  ] m   
 �;
�; 
TEXTX aba l     �:�9�8�:  �9  �8  b cdc i   m pefe I      �7g�6�7 0 onmutablecopy onMutableCopyg h�5h o      �4�4 0 rec  �5  �6  f k     ii jkj r     lml m     �3
�3 misccuram o      �2�2 0 ca  k n�1n L    oo l   p�0�/p n   qrq I    �.�-�,�. 0 mutablecopy mutableCopy�-  �,  r l   s�+�*s n   tut I    �)v�(�) 60 dictionarywithdictionary_ dictionaryWithDictionary_v w�'w o    �&�& 0 rec  �'  �(  u n   xyx o    �%�% 0 nsdictionary NSDictionaryy o    �$�$ 0 ca  �+  �*  �0  �/  �1  d z{z l     �#�"�!�#  �"  �!  { |}| l     � ~�   ~ � � https://developer.apple.com/library/archive/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/ManipulateNumbers.html    ���   h t t p s : / / d e v e l o p e r . a p p l e . c o m / l i b r a r y / a r c h i v e / d o c u m e n t a t i o n / L a n g u a g e s U t i l i t i e s / C o n c e p t u a l / M a c A u t o m a t i o n S c r i p t i n g G u i d e / M a n i p u l a t e N u m b e r s . h t m l} ��� i   q t��� I      ���� .0 convertnumbertostring convertNumberToString� ��� o      �� 0 	thenumber 	theNumber�  �  � k    b�� ��� r     ��� c     ��� o     �� 0 	thenumber 	theNumber� m    �
� 
TEXT� o      �� "0 thenumberstring theNumberString� ��� r    ��� I   ���� z��
� .sysooffslong    ��� null
� misccura�  � ���
� 
psof� m    �� ���  E� ���
� 
psin� o    �� "0 thenumberstring theNumberString�  � o      �� 0 	theoffset 	theOffset� ��� Z   #����� =    ��� o    �� 0 	theoffset 	theOffset� m    ��  � L    �� o    �� "0 thenumberstring theNumberString�  �  � ��� r   $ 3��� n   $ 1��� 7  % 1���
� 
ctxt� m   ) +�
�
 � l  , 0��	�� \   , 0��� o   - .�� 0 	theoffset 	theOffset� m   . /�� �	  �  � o   $ %�� "0 thenumberstring theNumberString� o      �� 0 	theprefix 	thePrefix� ��� r   4 7��� m   4 5�� ���  � o      �� 40 theconvertednumberprefix theConvertedNumberPrefix� ��� Z   8 _����� C  8 ;��� o   8 9� �  0 	theprefix 	thePrefix� m   9 :�� ���  -� k   > [�� ��� r   > A��� m   > ?�� ���  -� o      ���� 40 theconvertednumberprefix theConvertedNumberPrefix� ���� Z   B [������ =   B E��� o   B C���� 0 	theprefix 	thePrefix� m   C D�� ���  -� r   H K��� m   H I�� ���  � o      ���� 0 	theprefix 	thePrefix��  � r   N [��� n   N Y��� 7  O Y����
�� 
ctxt� m   S U���� � m   V X������� o   N O���� 0 	theprefix 	thePrefix� o      ���� 0 	theprefix 	thePrefix��  �  �  � ��� r   ` q��� c   ` o��� l  ` m������ n   ` m��� 7  a m����
�� 
ctxt� l  e i������ [   e i��� o   f g���� 0 	theoffset 	theOffset� m   g h���� ��  ��  � m   j l������� o   ` a���� "0 thenumberstring theNumberString��  ��  � m   m n��
�� 
nmbr� o      ���� ,0 thedecimaladjustment theDecimalAdjustment� ��� r   r w��� A  r u��� o   r s���� ,0 thedecimaladjustment theDecimalAdjustment� m   s t����  � o      ���� :0 isnegativedecimaladjustment isNegativeDecimalAdjustment� ��� Z   x �������� o   x y���� :0 isnegativedecimaladjustment isNegativeDecimalAdjustment� k   | ��� ��� r   | ���� c   | ���� l  | ������� n   | ���� 1    ���
�� 
rvse� l  | ������ n   | ��� 2  } ��
�� 
cha � o   | }���� 0 	theprefix 	thePrefix��  ��  ��  ��  � m   � ���
�� 
TEXT� o      ���� 0 	theprefix 	thePrefix� ���� r   � ���� d   � ��� o   � ����� ,0 thedecimaladjustment theDecimalAdjustment� o      ���� ,0 thedecimaladjustment theDecimalAdjustment��  ��  ��  � ��� r   � ���� I  � ���� � z����
�� .sysooffslong    ��� null
�� misccura��    ��
�� 
psof m   � � �  . ����
�� 
psin o   � ����� 0 	theprefix 	thePrefix��  � o      ���� $0 thedecimaloffset theDecimalOffset�  Z   � �	��
 =   � � o   � ����� $0 thedecimaloffset theDecimalOffset m   � �����  	 r   � � m   � � �   o      ���� 0 thefirstpart theFirstPart��  
 r   � � n   � � 7  � ���
�� 
ctxt m   � �����  l  � ����� \   � � o   � ����� $0 thedecimaloffset theDecimalOffset m   � ����� ��  ��   o   � ����� 0 	theprefix 	thePrefix o      ���� 0 thefirstpart theFirstPart  r   � � n   � � 7  � ��� !
�� 
ctxt  l  � �"����" [   � �#$# o   � ����� $0 thedecimaloffset theDecimalOffset$ m   � ����� ��  ��  ! m   � ������� o   � ����� 0 	theprefix 	thePrefix o      ���� 0 thesecondpart theSecondPart %&% r   � �'(' o   � ����� 0 thefirstpart theFirstPart( o      ���� (0 theconvertednumber theConvertedNumber& )*) r   � �+,+ o   � ����� ,0 thedecimaladjustment theDecimalAdjustment, o      ����  0 therepeatcount theRepeatCount* -.- Z  � �/0����/ ?  � �121 l  � �3����3 n   � �454 1   � ���
�� 
leng5 o   � ����� 0 thesecondpart theSecondPart��  ��  2 o   � �����  0 therepeatcount theRepeatCount0 r   � �676 n   � �898 1   � ���
�� 
leng9 o   � ����� 0 thesecondpart theSecondPart7 o      ����  0 therepeatcount theRepeatCount��  ��  . :;: Y   �7<��=>��< k   �2?? @A@ Q   �BCDB r   �EFE b   �GHG o   � ����� (0 theconvertednumber theConvertedNumberH n   � IJI 4   � ��K
�� 
cha K o   � ����� 0 a  J o   � ����� 0 thesecondpart theSecondPartF o      ���� (0 theconvertednumber theConvertedNumberC R      ������
�� .ascrerr ****      � ****��  ��  D r  LML b  NON o  ���� (0 theconvertednumber theConvertedNumberO m  PP �QQ  0M o      ���� (0 theconvertednumber theConvertedNumberA R��R Z 2ST����S F  $UVU =  WXW o  ���� 0 a  X o  ���� ,0 thedecimaladjustment theDecimalAdjustmentV >  YZY o  ���� 0 a  Z l [����[ n  \]\ 1  ��
�� 
leng] o  ���� 0 thesecondpart theSecondPart��  ��  T r  '.^_^ b  ',`a` o  '(���� (0 theconvertednumber theConvertedNumbera m  (+bb �cc  ._ o      ���� (0 theconvertednumber theConvertedNumber��  ��  ��  �� 0 a  = m   � ����� > o   � �����  0 therepeatcount theRepeatCount��  ; ded Z 8Kfg����f D  8=hih o  89���� (0 theconvertednumber theConvertedNumberi m  9<jj �kk  .g r  @Glml b  @Enon o  @A���� (0 theconvertednumber theConvertedNumbero m  ADpp �qq  0m o      ���� (0 theconvertednumber theConvertedNumber��  ��  e rsr Z L]tu����t o  LM���� :0 isnegativedecimaladjustment isNegativeDecimalAdjustmentu r  PYvwv c  PWxyx l PUz����z n  PU{|{ 1  SU��
�� 
rvse| l PS}����} n  PS~~ 2 QS��
�� 
cha  o  PQ���� (0 theconvertednumber theConvertedNumber��  ��  ��  ��  y m  UV��
�� 
TEXTw o      ���� (0 theconvertednumber theConvertedNumber��  ��  s ���� L  ^b�� b  ^a��� o  ^_���� 40 theconvertednumberprefix theConvertedNumberPrefix� o  _`���� (0 theconvertednumber theConvertedNumber��  � ��� l     ����~��  �  �~  � ��� l     �}���}  � * $ values are accepted on only numbers   � ��� H   v a l u e s   a r e   a c c e p t e d   o n   o n l y   n u m b e r s� ��� i   u x��� I      �|��{�| *0 makejsonwithnumbers makeJsonWithNumbers� ��� o      �z�z 0 keys  � ��y� o      �x�x 
0 values  �y  �{  � k     j�� ��� r     ��� m     �w�w � o      �v�v 0 i  � ��� r    ��� m    �� ���  { 
� o      �u�u 0 
jsonresult 
jsonResult� ��� T    a�� k    \�� ��� r    ��� l   ��t�s� n   ��� I    �r��q�r .0 convertnumbertostring convertNumberToString� ��p� n    ��� 4    �o�
�o 
cobj� o    �n�n 0 i  � o    �m�m 
0 values  �p  �q  �  f    �t  �s  � o      �l�l 0 valuestr valueStr� ��� l   �k�j�i�k  �j  �i  � ��� Z    F���h�� =    ��� o    �g�g 0 i  � l   ��f�e� I   �d��c
�d .corecnte****       ****� o    �b�b 0 keys  �c  �f  �e  � r   # 3��� l  # 1��a�`� b   # 1��� b   # /��� b   # -��� b   # +��� b   # &��� o   # $�_�_ 0 
jsonresult 
jsonResult� m   $ %�� ���      "� n   & *��� 4   ' *�^�
�^ 
cobj� o   ( )�]�] 0 i  � o   & '�\�\ 0 keys  � m   + ,�� ���  " :  � o   - .�[�[ 0 valuestr valueStr� m   / 0�� ���  
�a  �`  � o      �Z�Z 0 
jsonresult 
jsonResult�h  � r   6 F��� l  6 D��Y�X� b   6 D��� b   6 B��� b   6 @��� b   6 >��� b   6 9��� o   6 7�W�W 0 
jsonresult 
jsonResult� m   7 8�� ���      "� n   9 =��� 4   : =�V�
�V 
cobj� o   ; <�U�U 0 i  � o   9 :�T�T 0 keys  � m   > ?�� ���  " :  � o   @ A�S�S 0 valuestr valueStr� m   B C�� ���  , 
�Y  �X  � o      �R�R 0 
jsonresult 
jsonResult� ��� l  G G�Q�P�O�Q  �P  �O  � ��� r   G L��� [   G J��� o   G H�N�N 0 i  � m   H I�M�M � o      �L�L 0 i  � ��K� Z   M \���J�I� ?   M T��� o   M N�H�H 0 i  � l  N S��G�F� I  N S�E��D
�E .corecnte****       ****� o   N O�C�C 0 keys  �D  �G  �F  �  S   W X�J  �I  �K  � ��� r   b g��� b   b e��� o   b c�B�B 0 
jsonresult 
jsonResult� m   c d�� ���  }� o      �A�A 0 
jsonresult 
jsonResult� ��@� L   h j�� o   h i�?�? 0 
jsonresult 
jsonResult�@  � ��� l     �>�=�<�>  �=  �<  � 	 		  i   y |			 I      �;	�:�; *0 makejsonwithstrings makeJsonWithStrings	 			 o      �9�9 0 keys  	 	�8	 o      �7�7 
0 values  �8  �:  	 k     e		 			
		 r     			 m     �6�6 	 o      �5�5 0 i  	
 			 r    			 m    		 �		  { 
	 o      �4�4 0 
jsonresult 
jsonResult	 			 T    \		 k    W		 			 r    			 n    			 4    �3	
�3 
cobj	 o    �2�2 0 i  	 o    �1�1 
0 values  	 o      �0�0 0 valuestr valueStr	 			 l   �/�.�-�/  �.  �-  	 	 	!	  Z    A	"	#�,	$	" =   	%	&	% o    �+�+ 0 i  	& l   	'�*�)	' I   �(	(�'
�( .corecnte****       ****	( o    �&�& 0 keys  �'  �*  �)  	# r    .	)	*	) l   ,	+�%�$	+ b    ,	,	-	, b    *	.	/	. b    (	0	1	0 b    &	2	3	2 b    !	4	5	4 o    �#�# 0 
jsonresult 
jsonResult	5 m     	6	6 �	7	7      "	3 n   ! %	8	9	8 4   " %�"	:
�" 
cobj	: o   # $�!�! 0 i  	9 o   ! "� �  0 keys  	1 m   & '	;	; �	<	<  " :   "	/ o   ( )�� 0 valuestr valueStr	- m   * +	=	= �	>	>  " 
�%  �$  	* o      �� 0 
jsonresult 
jsonResult�,  	$ r   1 A	?	@	? l  1 ?	A��	A b   1 ?	B	C	B b   1 =	D	E	D b   1 ;	F	G	F b   1 9	H	I	H b   1 4	J	K	J o   1 2�� 0 
jsonresult 
jsonResult	K m   2 3	L	L �	M	M      "	I n   4 8	N	O	N 4   5 8�	P
� 
cobj	P o   6 7�� 0 i  	O o   4 5�� 0 keys  	G m   9 :	Q	Q �	R	R  " :   "	E o   ; <�� 0 valuestr valueStr	C m   = >	S	S �	T	T  " , 
�  �  	@ o      �� 0 
jsonresult 
jsonResult	! 	U	V	U l  B B����  �  �  	V 	W	X	W r   B G	Y	Z	Y [   B E	[	\	[ o   B C�� 0 i  	\ m   C D�� 	Z o      �� 0 i  	X 	]�	] Z   H W	^	_��	^ ?   H O	`	a	` o   H I�� 0 i  	a l  I N	b��
	b I  I N�		c�
�	 .corecnte****       ****	c o   I J�� 0 keys  �  �  �
  	_  S   R S�  �  �  	 	d	e	d r   ] b	f	g	f b   ] `	h	i	h o   ] ^�� 0 
jsonresult 
jsonResult	i m   ^ _	j	j �	k	k  }	g o      �� 0 
jsonresult 
jsonResult	e 	l�	l L   c e	m	m o   c d�� 0 
jsonresult 
jsonResult�  	 	n	o	n l     ��� �  �  �   	o 	p	q	p i   } �	r	s	r I      ��	t���� 0 getnoteguid getNoteGuid	t 	u��	u o      ���� 0 notelink  ��  ��  	s k     	v	v 	w	x	w r     		y	z	y n    	{	|	{ I    ��	}���� 	0 split  	} 	~		~ o    ���� 0 notelink  	 	���	� m    	�	� �	�	�  /��  ��  	|  f     	z o      ���� 0 notelinklist notelinkList	x 	�	�	� r   
 	�	�	� \   
 	�	�	� l  
 	�����	� I  
 ��	���
�� .corecnte****       ****	� o   
 ���� 0 notelinklist notelinkList��  ��  ��  	� m    ���� 	� o      ���� 0 	lastindex 	lastIndex	� 	���	� r    	�	�	� l   	�����	� n    	�	�	� 4    ��	�
�� 
cobj	� o    ���� 0 	lastindex 	lastIndex	� o    ���� 0 notelinklist notelinkList��  ��  	� o      ���� 0 noteguid  ��  	q 	�	�	� l     ��������  ��  ��  	� 	�	�	� l     ��	�	���  	� I C convert an AppleScript Date object to a POSIX date CCYYMMDDHHmm.SS   	� �	�	� �   c o n v e r t   a n   A p p l e S c r i p t   D a t e   o b j e c t   t o   a   P O S I X   d a t e   C C Y Y M M D D H H m m . S S	� 	�	�	� i   � �	�	�	� I      ��	����� 0 	posixdate 	posixDate	� 	���	� o      ���� 0 datetime  ��  ��  	� k     	�	� 	�	�	� l     ��	�	���  	� h b date -j -f "%A, %B %e, %Y at %I:%M:%S %p" "Tuesday, September 1, 2015 at 11:00:00 AM" +%Y%m%d%H%M   	� �	�	� �   d a t e   - j   - f   " % A ,   % B   % e ,   % Y   a t   % I : % M : % S   % p "   " T u e s d a y ,   S e p t e m b e r   1 ,   2 0 1 5   a t   1 1 : 0 0 : 0 0   A M "   + % Y % m % d % H % M	� 	�	�	� r     	�	�	� b     	�	�	� b     	�	�	� m     	�	� �	�	� V d a t e   - j   - f   ' % A ,   % B   % e ,   % Y   a t   % I : % M : % S   % p '   '	� o    ���� 0 datetime  	� m    	�	� �	�	�  '	� o      ���� 0 command  	� 	�	�	� r    	�	�	� b    	�	�	� o    	���� 0 command  	� m   	 
	�	� �	�	�    + % Y % m % d % H % M . % S	� o      ���� 0 command  	� 	�	�	� l   ��������  ��  ��  	� 	�	�	� r    	�	�	� I   ��	���
�� .sysoexecTEXT���     TEXT	� o    ���� 0 command  ��  	� o      ���� 0 theposixdate thePosixDate	� 	���	� L    	�	� o    ���� 0 theposixdate thePosixDate��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l     ��	�	���  	� S M convert an AppleScript Date object to a UNIX timestamp (seconds since epoch)   	� �	�	� �   c o n v e r t   a n   A p p l e S c r i p t   D a t e   o b j e c t   t o   a   U N I X   t i m e s t a m p   ( s e c o n d s   s i n c e   e p o c h )	� 	�	�	� i   � �	�	�	� I      ��	����� 0 unixdate unixDate	� 	���	� o      ���� 0 datetime  ��  ��  	� k     	�	� 	�	�	� r     	�	�	� b     	�	�	� b     	�	�	� m     	�	� �	�	� V d a t e   - j   - f   ' % A ,   % B   % e ,   % Y   a t   % I : % M : % S   % p '   '	� o    ���� 0 datetime  	� m    	�	� �	�	�  '	� o      ���� 0 command  	� 	�	�	� r    	�	�	� b    	�	�	� o    	���� 0 command  	� m   	 
	�	� �	�	�    + % s	� o      ���� 0 command  	� 	�	�	� l   ��������  ��  ��  	� 	�	�	� r    	�	�	� I   ��	���
�� .sysoexecTEXT���     TEXT	� o    ���� 0 command  ��  	� o      ���� 0 theunixdate theUnixDate	� 	���	� L    	�	� o    ���� 0 theunixdate theUnixDate��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� i   � �	�	�	� I      ��	����� 0 gettimestring getTimeString	� 	���	� o      ���� "0 lastupdateddate lastUpdatedDate��  ��  	� k     �	�	� 	�	�	� r     	�	�	� c     	�	�	� n     	�	�	� 1    ��
�� 
year	� o     ���� "0 lastupdateddate lastUpdatedDate	� m    ��
�� 
nmbr	� o      ���� 0 	yearvalue 	yearValue	� 	�	�	� r    
 

  c    


 n    


 m   	 ��
�� 
mnth
 o    	���� "0 lastupdateddate lastUpdatedDate
 m    ��
�� 
nmbr
 o      ���� 0 
monthvalue 
monthValue	� 


 r    

	
 c    




 n    


 1    ��
�� 
day 
 o    ���� "0 lastupdateddate lastUpdatedDate
 m    ��
�� 
nmbr
	 o      ���� 0 dayvalue dayValue
 


 r    


 c    


 l   
����
 n    


 1    ��
�� 
time
 o    ���� "0 lastupdateddate lastUpdatedDate��  ��  
 m    ��
�� 
nmbr
 o      ���� 0 	timevalue 	timeValue
 


 l     ��������  ��  ��  
 


 Z     1

����
 A     #


 o     !���� 0 
monthvalue 
monthValue
 m   ! "���� 

 r   & -

 
 c   & +
!
"
! b   & )
#
$
# m   & '
%
% �
&
&  0
$ o   ' (���� 0 
monthvalue 
monthValue
" m   ) *��
�� 
TEXT
  o      ���� 0 
monthvalue 
monthValue��  ��  
 
'
(
' l  2 2��������  ��  ��  
( 
)
*
) Z   2 C
+
,����
+ A   2 5
-
.
- o   2 3���� 0 dayvalue dayValue
. m   3 4���� 

, r   8 ?
/
0
/ c   8 =
1
2
1 b   8 ;
3
4
3 m   8 9
5
5 �
6
6  0
4 o   9 :���� 0 dayvalue dayValue
2 m   ; <��
�� 
TEXT
0 o      ���� 0 dayvalue dayValue��  ��  
* 
7
8
7 l  D D��������  ��  ��  
8 
9
:
9 Z   D �
;
<
=��
; l  D O
>����
> F   D O
?
@
? B   D G
A
B
A m   D E�����
B o   E F���� 0 	timevalue 	timeValue
@ A   J M
C
D
C o   J K���� 0 	timevalue 	timeValue
D m   K L����'��  ��  
< r   R W
E
F
E b   R U
G
H
G m   R S
I
I �
J
J  0
H o   S T���� 0 	timevalue 	timeValue
F o      ���� 0 	timevalue 	timeValue
= 
K
L
K l  Z e
M����
M F   Z e
N
O
N B   Z ]
P
Q
P m   Z [���� d
Q o   [ \���� 0 	timevalue 	timeValue
O A   ` c
R
S
R o   ` a���� 0 	timevalue 	timeValue
S m   a b�����  ��  
L 
T
U
T r   h m
V
W
V b   h k
X
Y
X m   h i
Z
Z �
[
[  0 0
Y o   i j�~�~ 0 	timevalue 	timeValue
W o      �}�} 0 	timevalue 	timeValue
U 
\
]
\ l  p {
^�|�{
^ F   p {
_
`
_ B   p s
a
b
a m   p q�z�z 

b o   q r�y�y 0 	timevalue 	timeValue
` A   v y
c
d
c o   v w�x�x 0 	timevalue 	timeValue
d m   w x�w�w d�|  �{  
] 
e
f
e r   ~ �
g
h
g b   ~ �
i
j
i m   ~ 
k
k �
l
l  0 0 0
j o    ��v�v 0 	timevalue 	timeValue
h o      �u�u 0 	timevalue 	timeValue
f 
m
n
m l  � �
o�t�s
o A   � �
p
q
p o   � ��r�r 0 	timevalue 	timeValue
q m   � ��q�q 
�t  �s  
n 
r�p
r k   � �
s
s 
t
u
t r   � �
v
w
v b   � �
x
y
x m   � �
z
z �
{
{  0 0 0 0
y o   � ��o�o 0 	timevalue 	timeValue
w o      �n�n 0 	timevalue 	timeValue
u 
|�m
| l  � ��l�k�j�l  �k  �j  �m  �p  ��  
: 
}
~
} l  � ��i�h�g�i  �h  �g  
~ 

�
 r   � �
�
�
� b   � �
�
�
� b   � �
�
�
� b   � �
�
�
� l  � �
��f�e
� c   � �
�
�
� o   � ��d�d 0 	yearvalue 	yearValue
� m   � ��c
�c 
TEXT�f  �e  
� l  � �
��b�a
� c   � �
�
�
� o   � ��`�` 0 
monthvalue 
monthValue
� m   � ��_
�_ 
TEXT�b  �a  
� l  � �
��^�]
� c   � �
�
�
� o   � ��\�\ 0 dayvalue dayValue
� m   � ��[
�[ 
TEXT�^  �]  
� l  � �
��Z�Y
� c   � �
�
�
� o   � ��X�X 0 	timevalue 	timeValue
� m   � ��W
�W 
TEXT�Z  �Y  
� 1      �V
�V 
rslt
� 
�
�
� l  � ��U�T�S�U  �T  �S  
� 
�
�
� L   � �
�
� c   � �
�
�
� 1   � ��R
�R 
rslt
� m   � ��Q
�Q 
TEXT
� 
��P
� l  � ��O�N�M�O  �N  �M  �P  	� 
�
�
� l     �L�K�J�L  �K  �J  
� 
�
�
� i   � �
�
�
� I      �I
��H�I ,0 findandreplaceintext findAndReplaceInText
� 
�
�
� o      �G�G 0 thetext theText
� 
�
�
� o      �F�F "0 thesearchstring theSearchString
� 
��E
� o      �D�D ,0 thereplacementstring theReplacementString�E  �H  
� k      
�
� 
�
�
� r     
�
�
� o     �C�C "0 thesearchstring theSearchString
� n     
�
�
� 1    �B
�B 
txdl
� 1    �A
�A 
ascr
� 
�
�
� r    
�
�
� n    	
�
�
� 2    	�@
�@ 
citm
� o    �?�? 0 thetext theText
� o      �>�> 0 thetextitems theTextItems
� 
�
�
� r    
�
�
� o    �=�= ,0 thereplacementstring theReplacementString
� n     
�
�
� 1    �<
�< 
txdl
� 1    �;
�; 
ascr
� 
�
�
� r    
�
�
� c    
�
�
� o    �:�: 0 thetextitems theTextItems
� m    �9
�9 
TEXT
� o      �8�8 0 thetext theText
� 
�
�
� r    
�
�
� m    
�
� �
�
�  
� n     
�
�
� 1    �7
�7 
txdl
� 1    �6
�6 
ascr
� 
��5
� L     
�
� o    �4�4 0 thetext theText�5  
� 
�
�
� l     �3�2�1�3  �2  �1  
� 
�
�
� i   � �
�
�
� I      �0
��/�0 *0 getscriptfilterjson getScriptFilterJson
� 
�
�
� o      �.�. 0 recs  
� 
��-
� o      �,�, 	0 rerun  �-  �/  
� k     �
�
� 
�
�
� l     �+�*�)�+  �*  �)  
� 
�
�
� r     
�
�
� m     
�
� �
�
�  { 
 	 " i t e m s " :   [
� o      �(�(  0 scfilterresult scFilterResult
� 
�
�
� l   �'�&�%�'  �&  �%  
� 
�
�
� Z    
�
��$�#
� >   
�
�
� o    �"�" 	0 rerun  
� m    �!�!��
� k   
 
�
� 
�
�
� r   
 
�
�
� b   
 
�
�
� b   
 
�
�
� b   
 
�
�
� m   
 
�
� �
�
�  { 
 	 " r e r u n " :
� o    � �  	0 rerun  
� m    
�
� �
�
�  , 
 	
� m    
�
� �
�
�  " i t e m s " :   [
� o      ��  0 scfilterresult scFilterResult
� 
��
� l   ����  �  �  �  �$  �#  
� 
�
�
� l   ����  �  �  
� 
�
�
� r    
�
�
� m    �� 
� o      �� 0 i  
� 
� 
� T    � k   # �  l  # #����  �  �    r   # / b   # -	
	 b   # + m   # $ �  " n   $ * o   ( *�� 0 titlestr titleStr n   $ ( 4   % (�
� 
cobj o   & '�� 0 i   o   $ %�� 0 recs  
 m   + , �  " o      �� 	0 title    r   0 < b   0 : b   0 8 m   0 1 �  " n   1 7 !  o   5 7�� 0 icon  ! n   1 5"#" 4   2 5�$
� 
cobj$ o   3 4�� 0 i  # o   1 2�
�
 0 recs   m   8 9%% �&&  " o      �	�	 0 iconpath iconPath '(' r   = I)*) b   = G+,+ b   = E-.- m   = >// �00  ". n   > D121 o   B D�� 0 arg  2 n   > B343 4   ? B�5
� 
cobj5 o   @ A�� 0 i  4 o   > ?�� 0 recs  , m   E F66 �77  "* o      �� 0 arg  ( 898 r   J X:;: b   J V<=< b   J R>?> m   J K@@ �AA  "? n   K QBCB o   O Q�� 0 subtitle subTitleC n   K ODED 4   L O�F
� 
cobjF o   M N�� 0 i  E o   K L� �  0 recs  = m   R UGG �HH  "; o      ���� 0 subtitle subTitle9 IJI r   Y kKLK b   Y iMNM b   Y eOPO m   Y \QQ �RR  "P n   \ dSTS o   ` d���� 0 	quicklook  T n   \ `UVU 4   ] `��W
�� 
cobjW o   ^ _���� 0 i  V o   \ ]���� 0 recs  N m   e hXX �YY  "L o      ���� 0 	quicklook  J Z[Z l  l l��������  ��  ��  [ \]\ r   l �^_^ b   l �`a` b   l �bcb b   l �ded b   l �fgf b   l �hih b   l jkj b   l }lml b   l ynon b   l wpqp b   l srsr b   l qtut o   l m����  0 scfilterresult scFilterResultu m   m pvv �ww ,         
 	 	 {   
 	 	   	 " t i t l e " :s o   q r���� 	0 title  q m   s vxx �yy  ,     
 	 	   	 " a r g " :o o   w x���� 0 arg  m m   y |zz �{{ " ,   
 	 	 	 " s u b t i t l e " :k o   } ~���� 0 subtitle subTitlei m    �|| �}} 8 ,   
 	 	 	 " i c o n " :   {   
 	 	 	 	 " p a t h " :g o   � ����� 0 iconpath iconPathe m   � �~~ � 6   
 	 	 	 } ,   
 	 	 	 " q u i c k l o o k u r l " :c o   � ����� 0 	quicklook  a m   � ��� ���  
 	 	 }_ o      ����  0 scfilterresult scFilterResult] ��� l  � ���������  ��  ��  � ��� Z   � �������� >  � ���� o   � ����� 0 i  � l  � ������� I  � ������
�� .corecnte****       ****� o   � ����� 0 recs  ��  ��  ��  � r   � ���� b   � ���� o   � �����  0 scfilterresult scFilterResult� m   � ��� ���  ,� o      ����  0 scfilterresult scFilterResult��  ��  � ��� l  � ���������  ��  ��  � ��� r   � ���� [   � ���� o   � ����� 0 i  � m   � ����� � o      ���� 0 i  � ���� Z   � �������� ?   � ���� o   � ����� 0 i  � l  � ������� I  � ������
�� .corecnte****       ****� o   � ����� 0 recs  ��  ��  ��  �  S   � ���  ��  ��    ��� l  � ���������  ��  ��  � ��� r   � ���� b   � ���� o   � �����  0 scfilterresult scFilterResult� m   � ��� ��� 
 
 	 ] 
 }� o      ����  0 scfilterresult scFilterResult� ��� l  � ���������  ��  ��  � ��� L   � ��� o   � �����  0 scfilterresult scFilterResult� ���� l  � ���������  ��  ��  ��  
� ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 	trimquote 	trimQuote� ���� o      ���� 0 strvalue strValue��  ��  � k     9�� ��� r     ��� c     ��� l    ������ n     ��� 7   ����
�� 
cha � m    ���� � m    
������� l    ������ o     ���� 0 strvalue strValue��  ��  ��  ��  � m    ��
�� 
TEXT� o      ���� 0 strvalue strValue� ��� Z   ������� l   ������ =   ��� n    ��� 1    ��
�� 
leng� o    ���� 0 strvalue strValue� m    ���� ��  ��  � L    �� m    �� ���  ��  ��  � ��� r    2��� c    0��� l   .������ n    .��� 7    .����
�� 
cha � m   $ &���� � l  ' -������ \   ' -��� l  ( +������ l  ( +������ n   ( +��� 1   ) +��
�� 
leng� o   ( )���� 0 strvalue strValue��  ��  ��  ��  � m   + ,���� ��  ��  � l    ������ o     ���� 0 strvalue strValue��  ��  ��  ��  � m   . /��
�� 
TEXT� o      ���� 0 strvalue strValue� ��� L   3 7�� c   3 6��� o   3 4���� 0 strvalue strValue� m   4 5��
�� 
TEXT� ���� l  8 8��������  ��  ��  ��  � ���� l     ��������  ��  ��  ��   !�������������������������� 	��  � ����������������������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q
�� 
pimr�� 0 ca  �� 0 nsdata NSData�� 0 nsdictionary NSDictionary�� *0 nsmutabledictionary NSMutableDictionary�� *0 nsjsonserialization NSJSONSerialization�� 0 nsstring NSString�� ,0 nsutf8stringencoding NSUTF8StringEncoding�� 0 jsontorecord JSONtoRecord�� "0 writetexttofile writeTextToFile�� 	0 split  �� 0 join  ��  0 getcurrentpath getCurrentPath�� *0 getcurrentposixpath getCurrentPosixPath�� 0 map  �� 0 keysofrecord keysOfRecord�  0 valuesofrecord valuesOfRecord�~ 0 getvalue getValue�} 0 setvalue setValue�|  0 getcurrentdate getCurrentDate�{ 0 onmutablecopy onMutableCopy�z .0 convertnumbertostring convertNumberToString�y *0 makejsonwithnumbers makeJsonWithNumbers�x *0 makejsonwithstrings makeJsonWithStrings�w 0 getnoteguid getNoteGuid�v 0 	posixdate 	posixDate�u 0 unixdate unixDate�t 0 gettimestring getTimeString�s ,0 findandreplaceintext findAndReplaceInText�r *0 getscriptfilterjson getScriptFilterJson�q 0 	trimquote 	trimQuote� �p
�p 
   �o�n
�o 
cobj  �m
�m 
frmk�n   �l�k
�l 
cobj  �j
�j 
osax�k  
�� misccura�  �i�h
�i misccura�h 0 nsdata NSData�  �g�f
�g misccura�f 0 nsdictionary NSDictionary�  �e�d
�e misccura�d *0 nsmutabledictionary NSMutableDictionary�  �c�b
�c misccura�b *0 nsjsonserialization NSJSONSerialization�  �a�`
�a misccura�` 0 nsstring NSString�� � �_R�^�]�\�_ 0 jsontorecord JSONtoRecord�^  �] �[�Z�Y
�[ 
from�Z 0 fp  �Y   �X�W�V�U�X 0 fp  �W 0 jsondata JSONdata�V 0 x  �U 0 e E �T�S�R�Q�P�O�N�M�T 20 datawithcontentsoffile_ dataWithContentsOfFile_
�S 
obj �R F0 !jsonobjectwithdata_options_error_ !JSONObjectWithData_options_error_
�Q 
cobj
�P 
msng�O  0 iskindofclass_ isKindOfClass_
�N 
reco
�M 
list�\ Wb  �k+  E�Ob  �j�m+ E[�k/E�Z[�l/E�ZO�� 	)j�Y hO� *b  k+  	*�&Y hUO��&� �L��K�J�I�L "0 writetexttofile writeTextToFile�K �H�H   �G�F�E�G 0 thetext theText�F 0 thefile theFile�E 40 overwriteexistingcontent overwriteExistingContent�J   �D�C�B�A�D 0 thetext theText�C 0 thefile theFile�B 40 overwriteexistingcontent overwriteExistingContent�A 0 theopenedfile theOpenedFile �@�?�>�=�<�;�:�9�8�7�6�5�4�3
�@ 
TEXT
�? 
file
�> 
perm
�= .rdwropenshor       file
�< 
set2
�; .rdwrseofnull���     ****
�: 
refn
�9 
wrat
�8 rdwreof �7 
�6 .rdwrwritnull���     ****
�5 .rdwrclosnull���     ****�4  �3  �I \ >��&E�O*�/�el E�O�e  ��jl Y hO����� 
O�j OeOPW X   *�/j W X  hOf� �2�1�0�/�2 	0 split  �1 �.�.   �-�,�- 	0 input  �, 0 x  �0   �+�*�+ 	0 input  �* 0 x   �)�(
�) 
txdl
�( 
citm�/ �� 	�kvY hO�*�,FO��-E� �'9�&�%�$�' 0 join  �& �# �#    �"�!�" 	0 input  �! 0 x  �%   � ��  	0 input  � 0 x   ��
� 
txdl
� 
ctxt�$ 
�*�,FO��&� �K��!"��  0 getcurrentpath getCurrentPath�  �  ! ����� 20 currentpathwithfilename currentPathWithFileName� "0 currentpathlist currentPathList� 0 currentpath currentPath� 0 j  " 
��a�i{����
� .earsffdralis        afdr
� 
TEXT� 	0 split  
� 
cobj
� .corecnte****       ****� g)j  �&E�O)��l+ E�O�E�OkE�O FhZ�� ��%��/%E�Y hO��  ��/E�Y hO�kE�O��j 	k Y h[OY��O�� ����#$�� *0 getcurrentposixpath getCurrentPosixPath�  �  # ��
� 0 current_path0  �
 0 current_path1  $ ��	���
�	 .earsffdralis        afdr
� 
ctnr
� 
alis
� 
psxp� � )j �,�&E�UO��,E�O�� ����%&�� 0 map  � �'� '  � ���  0 f  �� 0 thedata theData�  % ������������ 0 f  �� 0 thedata theData�� 0 s  �� 0 	theresult 	theResult�� 0 anitem anItem& ���(���������� 0 s  ( ��)����*+��
�� .ascrinit****      � ****) k     ,, �����  ��  ��  * ���� 0 ff  + ���� 0 ff  �� b   �
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 ff  � /��K S�OjvE�O �[��l kh ��k+ �6F[OY��O�� �������-.���� 0 keysofrecord keysOfRecord�� ��/�� /  ���� 0 rec  ��  - ���� 0 rec  . ����������
�� misccura�� 0 nsdictionary NSDictionary�� 60 dictionarywithdictionary_ dictionaryWithDictionary_�� 0 allkeys allKeys
�� 
list�� �Ec  Ob  �,�k+ j+ �&� ������01����  0 valuesofrecord valuesOfRecord�� ��2�� 2  ���� 0 rec  ��  0 ���� 0 rec  1 ����������
�� misccura�� 0 nsdictionary NSDictionary�� 60 dictionarywithdictionary_ dictionaryWithDictionary_�� 0 	allvalues 	allValues
�� 
list�� �Ec  Ob  �,�k+ j+ �&� ��(����34���� 0 getvalue getValue�� ��5�� 5  ������ 0 rec  �� 0 selectedkey selectedKey��  3 ������ 0 rec  �� 0 selectedkey selectedKey4 ����������
�� misccura�� 0 nsdictionary NSDictionary�� 60 dictionarywithdictionary_ dictionaryWithDictionary_�� 0 valueforkey_ valueForKey_
�� 
TEXT�� �Ec  Ob  �,�k+ �k+ �&� ��H����67���� 0 setvalue setValue�� ��8�� 8  �������� 0 mutabledict mutableDict�� 0 selectedkey selectedKey�� 0 selectedvalue selectedValue��  6 �������� 0 mutabledict mutableDict�� 0 selectedkey selectedKey�� 0 selectedvalue selectedValue7 ���� $0 setvalue_forkey_ setValue_forKey_�� ���l+  � ��Z����9:����  0 getcurrentdate getCurrentDate��  ��  9  : ������
�� .misccurdldt    ��� null�� 0 gettimestring getTimeString
�� 
TEXT�� **j  k+ �&� ��f����;<���� 0 onmutablecopy onMutableCopy�� ��=�� =  ���� 0 rec  ��  ; ���� 0 rec  < ��������
�� misccura�� 0 nsdictionary NSDictionary�� 60 dictionarywithdictionary_ dictionaryWithDictionary_�� 0 mutablecopy mutableCopy�� �Ec  Ob  �,�k+ j+   �������>?���� .0 convertnumbertostring convertNumberToString�� ��@�� @  ���� 0 	thenumber 	theNumber��  > ���������������������������� 0 	thenumber 	theNumber�� "0 thenumberstring theNumberString�� 0 	theoffset 	theOffset�� 0 	theprefix 	thePrefix�� 40 theconvertednumberprefix theConvertedNumberPrefix�� ,0 thedecimaladjustment theDecimalAdjustment�� :0 isnegativedecimaladjustment isNegativeDecimalAdjustment�� $0 thedecimaloffset theDecimalOffset�� 0 thefirstpart theFirstPart�� 0 thesecondpart theSecondPart�� (0 theconvertednumber theConvertedNumber��  0 therepeatcount theRepeatCount�� 0 a  ? ��������������������������������P��bjp
�� 
TEXT
�� misccura
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
ctxt
�� 
nmbr
�� 
cha 
�� 
rvse
�� 
leng��  ��  
�� 
bool��c��&E�O� *���� UE�O�j  �Y hO�[�\[Zk\Z�k2E�O�E�O�� "�E�O��  �E�Y �[�\[Zl\Zi2E�Y hO�[�\[Z�k\Zi2�&E�O�jE�O� ��-�,�&E�O�'E�Y hO� *�a �� UE�O�j  
a E�Y �[�\[Zk\Z�k2E�O�[�\[Z�k\Zi2E�O�E�O�E�O�a ,� �a ,E�Y hO Hk�kh  ���/%E�W X  �a %E�O�� 	 ��a ,a & �a %E�Y h[OY��O�a  �a %E�Y hO� ��-�,�&E�Y hO��% �������AB���� *0 makejsonwithnumbers makeJsonWithNumbers�� ��C�� C  ������ 0 keys  �� 
0 values  ��  A ������~�}�� 0 keys  �� 
0 values  � 0 i  �~ 0 
jsonresult 
jsonResult�} 0 valuestr valueStrB ��|�{�z�������
�| 
cobj�{ .0 convertnumbertostring convertNumberToString
�z .corecnte****       ****�� kkE�O�E�O XhZ)��/k+ E�O��j   ��%��/%�%�%�%E�Y ��%��/%�%�%�%E�O�kE�O��j  Y h[OY��O��%E�O� �y	�x�wDE�v�y *0 makejsonwithstrings makeJsonWithStrings�x �uF�u F  �t�s�t 0 keys  �s 
0 values  �w  D �r�q�p�o�n�r 0 keys  �q 
0 values  �p 0 i  �o 0 
jsonresult 
jsonResult�n 0 valuestr valueStrE 
	�m�l	6	;	=	L	Q	S	j
�m 
cobj
�l .corecnte****       ****�v fkE�O�E�O ShZ��/E�O��j   ��%��/%�%�%�%E�Y ��%��/%�%�%�%E�O�kE�O��j  Y h[OY��O��%E�O� �k	s�j�iGH�h�k 0 getnoteguid getNoteGuid�j �gI�g I  �f�f 0 notelink  �i  G �e�d�c�b�e 0 notelink  �d 0 notelinklist notelinkList�c 0 	lastindex 	lastIndex�b 0 noteguid  H 	��a�`�_�a 	0 split  
�` .corecnte****       ****
�_ 
cobj�h )��l+ E�O�j kE�O��/E� �^	��]�\JK�[�^ 0 	posixdate 	posixDate�] �ZL�Z L  �Y�Y 0 datetime  �\  J �X�W�V�X 0 datetime  �W 0 command  �V 0 theposixdate thePosixDateK 	�	�	��U
�U .sysoexecTEXT���     TEXT�[ �%�%E�O��%E�O�j E�O� �T	��S�RMN�Q�T 0 unixdate unixDate�S �PO�P O  �O�O 0 datetime  �R  M �N�M�L�N 0 datetime  �M 0 command  �L 0 theunixdate theUnixDateN 	�	�	��K
�K .sysoexecTEXT���     TEXT�Q �%�%E�O��%E�O�j E�O� �J	��I�HPQ�G�J 0 gettimestring getTimeString�I �FR�F R  �E�E "0 lastupdateddate lastUpdatedDate�H  P �D�C�B�A�@�D "0 lastupdateddate lastUpdatedDate�C 0 	yearvalue 	yearValue�B 0 
monthvalue 
monthValue�A 0 dayvalue dayValue�@ 0 	timevalue 	timeValueQ �?�>�=�<�;�:
%�9
5�8�7�6
I�5
Z
k
z�4
�? 
year
�> 
nmbr
�= 
mnth
�< 
day 
�; 
time�: 

�9 
TEXT�8��7'
�6 
bool�5 d
�4 
rslt�G ���,�&E�O��,�&E�O��,�&E�O��,�&E�O�� �%�&E�Y hO�� �%�&E�Y hO�	 ���& 
�%E�Y A��	 ���& 
�%E�Y +�	 ���& 
�%E�Y �� a �%E�OPY hO��&��&%��&%��&%E` O_ �&OP �3
��2�1ST�0�3 ,0 findandreplaceintext findAndReplaceInText�2 �/U�/ U  �.�-�,�. 0 thetext theText�- "0 thesearchstring theSearchString�, ,0 thereplacementstring theReplacementString�1  S �+�*�)�(�+ 0 thetext theText�* "0 thesearchstring theSearchString�) ,0 thereplacementstring theReplacementString�( 0 thetextitems theTextItemsT �'�&�%�$
�
�' 
ascr
�& 
txdl
�% 
citm
�$ 
TEXT�0 !���,FO��-E�O���,FO��&E�O���,FO� �#
��"�!VW� �# *0 getscriptfilterjson getScriptFilterJson�" �X� X  ��� 0 recs  � 	0 rerun  �!  V 	���������� 0 recs  � 	0 rerun  �  0 scfilterresult scFilterResult� 0 i  � 	0 title  � 0 iconpath iconPath� 0 arg  � 0 subtitle subTitle� 0 	quicklook  W 
�
�
�
����%/�6@�GQ�Xvxz|~����
� 
cobj� 0 titlestr titleStr� 0 icon  � 0 arg  � 0 subtitle subTitle� 0 	quicklook  
� .corecnte****       ****�  ��E�O�i �%�%�%E�OPY hOkE�O �hZ��/�,%�%E�O��/�,%�%E�O��/�,%�%E�O��/�,%a %E�Oa ��/a ,%a %E�O�a %�%a %�%a %�%a %�%a %�%a %E�O��j  �a %E�Y hO�kE�O��j  Y h[OY�bO�a %E�O�OP	 ����
YZ�	� 0 	trimquote 	trimQuote� �[� [  �� 0 strvalue strValue�
  Y �� 0 strvalue strValueZ ����
� 
cha 
� 
TEXT
� 
leng�	 :�[�\[Zl\Zi2�&E�O��,k  �Y hO�[�\[Zk\Z��,k2�&E�O��&OP �\\( M a c i n t o s h   H D : U s e r s : i g y u b o n g : L i b r a r y : A p p l i c a t i o n   S u p p o r t : A l f r e d : A l f r e d . a l f r e d p r e f e r e n c e s : w o r k f l o w s : u s e r . w o r k f l o w . 3 C 1 A C B 5 8 - 5 8 7 2 - 4 F F 5 - 8 7 5 9 - 1 E C 8 9 3 5 4 4 8 8 2 �]]H M a c i n t o s h   H D : U s e r s : i g y u b o n g : L i b r a r y : A p p l i c a t i o n   S u p p o r t : A l f r e d : A l f r e d . a l f r e d p r e f e r e n c e s : w o r k f l o w s : u s e r . w o r k f l o w . 3 C 1 A C B 5 8 - 5 8 7 2 - 4 F F 5 - 8 7 5 9 - 1 E C 8 9 3 5 4 4 8 8 2 : s e a r c h _ c o n t e n t : �^^R / U s e r s / i g y u b o n g / L i b r a r y / A p p l i c a t i o n   S u p p o r t / A l f r e d / A l f r e d . a l f r e d p r e f e r e n c e s / w o r k f l o w s / u s e r . w o r k f l o w . 3 C 1 A C B 5 8 - 5 8 7 2 - 4 F F 5 - 8 7 5 9 - 1 E C 8 9 3 5 4 4 8 8 2 / s e a r c h _ c o n t e n t / h t m l C a c h e L o g . j s o n �__0 / U s e r s / i g y u b o n g / L i b r a r y / A p p l i c a t i o n   S u p p o r t / A l f r e d / A l f r e d . a l f r e d p r e f e r e n c e s / w o r k f l o w s / u s e r . w o r k f l o w . 3 C 1 A C B 5 8 - 5 8 7 2 - 4 F F 5 - 8 7 5 9 - 1 E C 8 9 3 5 4 4 8 8 2 / a u t h C o n f i g . j s o n �``T / U s e r s / i g y u b o n g / L i b r a r y / A p p l i c a t i o n   S u p p o r t / A l f r e d / A l f r e d . a l f r e d p r e f e r e n c e s / w o r k f l o w s / u s e r . w o r k f l o w . 3 C 1 A C B 5 8 - 5 8 7 2 - 4 F F 5 - 8 7 5 9 - 1 E C 8 9 3 5 4 4 8 8 2 / s e a r c h _ c o n t e n t / t h u m b N a i l P a t h . j s o n��  ��  ��  ��  ��  ��   ascr  ��ޭ