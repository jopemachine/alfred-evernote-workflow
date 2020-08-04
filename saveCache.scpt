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
�V .aevtoappnull  �   � **** � o      �T�T 0 argv  �U   � k    l � �  � � � l     �S�R�Q�S  �R  �Q   �  � � � l     �P � ��P   �    very long time (24 hours)    � � � � 4   v e r y   l o n g   t i m e   ( 2 4   h o u r s ) �    t    e k   d  l   �O�N�M�O  �N  �M    r    	
	 I   �L�K
�L .sysoloadscpt        file b     n     1    �J
�J 
psxp l   �I�H b     l   	�G�F I   	�E
�E .earsffdralis        afdr  f     �D�C
�D 
rtyp m    �B
�B 
ctxt�C  �G  �F   m   	 
 �  : :�I  �H   m     �  u t i l i t y . s c p t�K  
 o      �A�A 0 utility    l   �@�?�>�@  �?  �>    r      c    !"! n   #$# I    �=�<�;�=  0 getcurrentpath getCurrentPath�<  �;  $ o    �:�: 0 utility  " m    �9
�9 
TEXT  o      �8�8 0 currentpath currentPath %&% l     �7�6�5�7  �6  �5  & '(' r     %)*) b     #+,+ o     !�4�4 0 currentpath currentPath, m   ! "-- �..   : s e a r c h _ c o n t e n t :* o      �3�3 &0 searchcontentpath searchContentPath( /0/ l  & &�2�1�0�2  �1  �0  0 121 l  & &�/34�/  3 #  Cache json path	(posix path)   4 �55 :   C a c h e   j s o n   p a t h 	 ( p o s i x   p a t h )2 676 r   & 1898 b   & -:;: l  & +<�.�-< n  & +=>= I   ' +�,�+�*�, *0 getcurrentposixpath getCurrentPosixPath�+  �*  > o   & '�)�) 0 utility  �.  �-  ; m   + ,?? �@@ @ s e a r c h _ c o n t e n t / h t m l C a c h e L o g . j s o n9 o      �(�( &0 htmlcachefilepath htmlCacheFilePath7 ABA l  2 2�'�&�%�'  �&  �%  B CDC l  2 2�$EF�$  E  
 cache map   F �GG    c a c h e   m a pD HIH r   2 AJKJ I  2 =�#LM�# 0 jsontorecord JSONtoRecordL o   2 3�"�" 0 utility  M �!N� 
�! 
fromN o   6 9�� &0 htmlcachefilepath htmlCacheFilePath�   K o      �� 0 htmlcachejson htmlCacheJsonI OPO l  B B����  �  �  P QRQ l  B B�ST�  S ? 9 todo: json�� ��� �ְų� ������ Ʋ���� ���⼭ ������ ��.   T �UU L   t o d o :   j s o n�t  �DŴ  ǈ�p��  ����t  �����t  ��0�  �з�   �� .R VWV l  B B�XY�  X   todo: 1763 error   Y �ZZ "   t o d o :   1 7 6 3   e r r o rW [\[ r   B N]^] n  B J_`_ I   C J�a�� 0 onmutablecopy onMutableCopya b�b o   C F�� 0 htmlcachejson htmlCacheJson�  �  ` o   B C�� 0 utility  ^ o      �� 0 htmlcachejson htmlCacheJson\ cdc l  O O����  �  �  d efe r   O Vghg m   O Rii �jj � f o n t - f a m i l y :   " T r e b u c h e t   M S " ,   " L u c i d a   S a n s   U n i c o d e " ,   " L u c i d a   G r a n d e " ,   " L u c i d a   S a n s " ,   A r i a l ,   s a n s - s e r i f ; 'h o      �� &0 metadatafontstyle metaDataFontStylef klk l  W W����  �  �  l mnm O   W zopo I  ] y��
q
� .corecrel****      � null�
  q �	rs
�	 
koclr m   a d�
� 
cfols �tu
� 
insht o   g h�� 0 currentpath currentPathu �v�
� 
prdtv K   k sww �x�
� 
pnamx m   n qyy �zz  C a c h i n g�  �  p m   W Z{{�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  n |}| l  { {�� ���  �   ��  } ~~ I  { ������
�� .sysoexecTEXT���     TEXT� m   { ~�� ��� > o p e n   / A p p l i c a t i o n s / E v e r n o t e . a p p��   ��� l  � ���������  ��  ��  � ��� O   �D��� k   �C�� ��� r   � ���� l  � ������� I  � ������
�� .EVRNfindnull���     ctxt� m   � ��� ���  ��  ��  ��  � o      ���� 0 allnotes allNotes� ��� l  � ���������  ��  ��  � ��� Z   � �������� =  � ���� l  � ������� I  � ������
�� .corecnte****       ****� o   � ����� 0 allnotes allNotes��  ��  ��  � m   � �����  � L   � ��� m   � ��� ���   ��  ��  � ��� l  � ���������  ��  ��  � ��� I  � �����
�� .EVRNenxpnull���     ****� o   � ����� 0 allnotes allNotes� ����
�� 
kfil� l  � ������� o   � ����� &0 searchcontentpath searchContentPath��  ��  � �����
�� 
Expf� m   � ���
�� Exffexht��  � ��� l  � ���������  ��  ��  � ��� r   � ���� K   � ��� ������� 0 elem  � m   � ��� ���  m i s s i n g   v a l u e��  � o      ���� (0 notetitleindexdict noteTitleIndexDict� ��� l  � ���������  ��  ��  � ��� r   � ���� n  � ���� I   � �������� 0 onmutablecopy onMutableCopy� ���� c   � ���� o   � ����� (0 notetitleindexdict noteTitleIndexDict� m   � ���
�� 
reco��  ��  � o   � ����� 0 utility  � o      ���� (0 notetitleindexdict noteTitleIndexDict� ��� l  � ���������  ��  ��  � ��� r   � ���� m   � ����� � o      ���� 0 i  � ��� l  � ���������  ��  ��  � ��� r   � ���� J   � �����  � o      ���� 0 exceptionlist exceptionList� ��� l  � ���������  ��  ��  � ��� T   ��� k   ��� ��� l  � ���������  ��  ��  � ��� r   �
��� c   ���� l  ������� n   ���� 1   ��
�� 
EVet� l  � ������ n   � ��� 4   � ���
�� 
cobj� o   � ����� 0 i  � o   � ����� 0 allnotes allNotes��  ��  ��  ��  � m  ��
�� 
TEXT� o      ���� 0 	notetitle 	noteTitle� ��� l ��������  ��  ��  � ��� r  "��� n ��� I  ������� 0 getnoteguid getNoteGuid� ���� n  ��� 1  ��
�� 
EV24� l ������ n  ��� 4  ���
�� 
cobj� o  ���� 0 i  � o  ���� 0 allnotes allNotes��  ��  ��  ��  � o  ���� 0 utility  � o      ���� 0 noteguid  � ��� l ##��������  ��  ��  � ��� r  #:��� n #6��� I  $6������� 0 gettimestring getTimeString� ���� n  $2��� 1  .2��
�� 
EVmm� l $.������ n  $.��� 4  '.���
�� 
cobj� o  *-���� 0 i  � o  $'���� 0 allnotes allNotes��  ��  ��  ��  � o  #$���� 0 utility  � o      ���� (0 lastestupdateddate lastestUpdatedDate�    l ;;��������  ��  ��    r  ;B o  ;>���� 0 	notetitle 	noteTitle o      ����  0 targetfilename targetFileName  l CC��������  ��  ��   	 l CC��
��  
 ) # Some special symbols are replaced.    � F   S o m e   s p e c i a l   s y m b o l s   a r e   r e p l a c e d .	  r  CU n CQ I  DQ������ ,0 findandreplaceintext findAndReplaceInText  o  DG����  0 targetfilename targetFileName  m  GJ �  ? �� m  JM �  _��  ��   o  CD���� 0 utility   o      ����  0 targetfilename targetFileName  r  Vh  n Vd!"! I  Wd��#���� ,0 findandreplaceintext findAndReplaceInText# $%$ o  WZ����  0 targetfilename targetFileName% &'& m  Z](( �))  / /' *��* m  ]`++ �,,  _��  ��  " o  VW���� 0 utility    o      ����  0 targetfilename targetFileName -.- r  i{/0/ n iw121 I  jw��3���� ,0 findandreplaceintext findAndReplaceInText3 454 o  jm����  0 targetfilename targetFileName5 676 m  mp88 �99  /7 :�: m  ps;; �<<  _�  ��  2 o  ij�~�~ 0 utility  0 o      �}�}  0 targetfilename targetFileName. =>= l ||�|�{�z�|  �{  �z  > ?@? l ||�yAB�y  A ' ! Colon should be processed with /   B �CC B   C o l o n   s h o u l d   b e   p r o c e s s e d   w i t h   /@ DED r  |�FGF n |�HIH I  }��xJ�w�x ,0 findandreplaceintext findAndReplaceInTextJ KLK o  }��v�v  0 targetfilename targetFileNameL MNM m  ��OO �PP  :N Q�uQ m  ��RR �SS  /�u  �w  I o  |}�t�t 0 utility  G o      �s�s  0 targetfilename targetFileNameE TUT l ���r�q�p�r  �q  �p  U VWV r  ��XYX n ��Z[Z I  ���o\�n�o 0 getvalue getValue\ ]^] o  ���m�m (0 notetitleindexdict noteTitleIndexDict^ _�l_ b  ��`a` m  ��bb �cc  #a o  ���k�k 0 	notetitle 	noteTitle�l  �n  [ o  ���j�j 0 utility  Y o      �i�i 0 	fileindex 	fileIndexW ded l ���h�g�f�h  �g  �f  e fgf l ���ehi�e  h   for debugging   i �jj    f o r   d e b u g g i n gg klk r  ��mnm o  ���d�d  0 targetfilename targetFileNamen o      �c�c 0 filenameonly fileNameOnlyl opo l ���b�a�`�b  �a  �`  p qrq Z  �st�_us = ��vwv c  ��xyx o  ���^�^ 0 	fileindex 	fileIndexy m  ���]
�] 
TEXTw m  ��zz �{{  m i s s i n g   v a l u et k  ��|| }~} r  ��� b  ����� b  ����� o  ���\�\ &0 searchcontentpath searchContentPath� o  ���[�[  0 targetfilename targetFileName� m  ���� ��� 
 . h t m l� o      �Z�Z  0 targetfilename targetFileName~ ��Y� n ����� I  ���X��W�X 0 setvalue setValue� ��� o  ���V�V (0 notetitleindexdict noteTitleIndexDict� ��� b  ����� m  ���� ���  #� o  ���U�U 0 	notetitle 	noteTitle� ��T� m  ���S�S �T  �W  � o  ���R�R 0 utility  �Y  �_  u k  ��� ��� r  ����� b  ����� b  ����� b  ����� b  ����� o  ���Q�Q &0 searchcontentpath searchContentPath� o  ���P�P  0 targetfilename targetFileName� m  ���� ���  _� o  ���O�O 0 	fileindex 	fileIndex� m  ���� ��� 
 . h t m l� o      �N�N  0 targetfilename targetFileName� ��M� n ���� I  ��L��K�L 0 setvalue setValue� ��� o  ���J�J (0 notetitleindexdict noteTitleIndexDict� ��� b  ����� m  ���� ���  #� o  ���I�I 0 	notetitle 	noteTitle� ��H� [  ����� o  ���G�G 0 	fileindex 	fileIndex� m  ���F�F �H  �K  � o  ���E�E 0 utility  �M  r ��� l �D�C�B�D  �C  �B  � ��� Z  ����A�� = ��� n ��� I  �@��?�@ 0 
fileexists 
FileExists� ��>� o  �=�=  0 targetfilename targetFileName�>  �?  �  f  � m  �<
�< boovtrue� k  ��� ��� O +��� r  *��� b  ��� o  �;�; 0 noteguid  � m  �� ��� 
 . h t m l� n      ��� 1  %)�:
�: 
pnam� 4  %�9�
�9 
file� o  !$�8�8  0 targetfilename targetFileName� m  ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� n ,:��� I  -:�7��6�7 0 setvalue setValue� ��� o  -0�5�5 0 htmlcachejson htmlCacheJson� ��� o  03�4�4 0 noteguid  � ��3� o  36�2�2 (0 lastestupdateddate lastestUpdatedDate�3  �6  � o  ,-�1�1 0 utility  � ��� l ;;�0�/�.�0  �/  �.  � ��� l ;;�-�,�+�-  �,  �+  � ��� r  ;O��� c  ;K��� l ;I��*�)� n  ;I��� 1  EI�(
�( 
EVet� l ;E��'�&� n  ;E��� 4  >E�%�
�% 
cobj� o  AD�$�$ 0 i  � o  ;>�#�# 0 allnotes allNotes�'  �&  �*  �)  � m  IJ�"
�" 
TEXT� o      �!�! $0 notetitleunicode noteTitleUnicode� ��� r  Pd��� c  P`��� l P^�� �� n  P^��� 1  Z^�
� 
EVmm� l PZ���� n  PZ��� 4  SZ��
� 
cobj� o  VY�� 0 i  � o  PS�� 0 allnotes allNotes�  �  �   �  � m  ^_�
� 
TEXT� o      �� &0 lasteditedunicode lastEditedUnicode� ��� r  ey��� c  eu��� l es���� n  es� � 1  os�
� 
EVdd  l eo�� n  eo 4  ho�
� 
cobj o  kn�� 0 i   o  eh�� 0 allnotes allNotes�  �  �  �  � m  st�
� 
TEXT� o      ��  0 createdunicode createdUnicode�  l zz���
�  �  �
    r  z�	
	 b  z� b  z� b  z� b  z� b  z� b  z� b  z� b  z� b  z� b  z� b  z�  b  z�!"! b  z�#$# m  z}%% �&& � < s t y l e > 
 i m g   { 
     m a x - w i d t h :   1 0 0 % ; 
     h e i g h t :   a u t o ; 
 } 
 < / s t y l e > 
 < p   i d = ' t i t l e '   s t y l e = ' f o n t - s i z e :   2 0 ;$ o  }��	�	 &0 metadatafontstyle metaDataFontStyle" m  ��'' �((  > T i t l e :    o  ���� 0 	notetitle 	noteTitle m  ��)) �** 
 < / p > 
 m  ��++ �,, P < p   i d = ' e d i t e d D a t e '   s t y l e = ' f o n t - s i z e :   2 0 ; o  ���� &0 metadatafontstyle metaDataFontStyle m  ��-- �.. " > L a s t   E d i t e d   I n :   o  ���� &0 lasteditedunicode lastEditedUnicode m  ��// �00 ^ < / p > 
 < p   i d = ' c r e a t i o n D a t e '   s t y l e = ' f o n t - s i z e :   2 0 ; o  ���� &0 metadatafontstyle metaDataFontStyle m  ��11 �22  > C r e a t e d   I n :   o  ����  0 createdunicode createdUnicode m  ��33 �44 P < / p > 
 < h r   s t y l e = ' m a r g i n - b o t t o m :   1 5 ; '   / >   

 o      �� "0 metadataofnotes metaDataOfNotes 565 n ��787 I  ���9�� 0 prependtext prependText9 :;: b  ��<=< b  ��>?> b  ��@A@ n ��BCB I  ��� �����  *0 getcurrentposixpath getCurrentPosixPath��  ��  C o  ������ 0 utility  A m  ��DD �EE  s e a r c h _ c o n t e n t /? o  ������ 0 noteguid  = m  ��FF �GG 
 . h t m l; H��H o  ������ "0 metadataofnotes metaDataOfNotes��  �  8  f  ��6 I��I l ����������  ��  ��  ��  �A  � k  ��JJ KLK l ����MN��  M 6 0 Not caching successfully! (Need to be improved)   N �OO `   N o t   c a c h i n g   s u c c e s s f u l l y !   ( N e e d   t o   b e   i m p r o v e d )L P��P r  ��QRQ b  ��STS b  ��UVU o  ������ 0 exceptionlist exceptionListV o  ������ 0 filenameonly fileNameOnlyT m  ��WW �XX  
R o      ���� 0 exceptionlist exceptionList��  � YZY l ����������  ��  ��  Z [\[ r  ��]^] [  ��_`_ o  ������ 0 i  ` m  ������ ^ o      ���� 0 i  \ aba l ����������  ��  ��  b c��c Z  �de����d l ��f����f ?  ��ghg o  ������ 0 i  h l ��i����i I ����j��
�� .corecnte****       ****j o  ������ 0 allnotes allNotes��  ��  ��  ��  ��  e  S  ����  ��  ��  � klk l ��������  ��  ��  l mnm r  opo n qrq I  ��s���� 0 keysofrecord keysOfRecords t��t o  ���� 0 htmlcachejson htmlCacheJson��  ��  r o  ���� 0 utility  p o      ���� 0 keystowrite keysToWriten uvu r   wxw n yzy I  ��{����  0 valuesofrecord valuesOfRecord{ |��| o  ���� 0 htmlcachejson htmlCacheJson��  ��  z o  ���� 0 utility  x o      ���� 0 valuestowrite valuesToWritev }~} l !!��������  ��  ��  ~ � r  !0��� n !,��� I  ",������� 0 makejson makeJson� ��� o  "%���� 0 keystowrite keysToWrite� ���� o  %(���� 0 valuestowrite valuesToWrite��  ��  � o  !"���� 0 utility  � o      ���� 0 jsoncontent jsonContent� ��� l 11��������  ��  ��  � ��� n 1A��� I  2A������� "0 writetexttofile writeTextToFile� ��� o  25���� 0 jsoncontent jsonContent� ��� b  5<��� l 58������ c  58��� o  56���� 0 currentpath currentPath� m  67��
�� 
TEXT��  ��  � m  8;�� ��� B : s e a r c h _ c o n t e n t : h t m l C a c h e L o g . j s o n� ���� m  <=��
�� boovtrue��  ��  �  f  12� ���� l BB��������  ��  ��  ��  � 5   � ������
�� 
capp� m   � ��� ��� * c o m . e v e r n o t e . E v e r n o t e
�� kfrmID  � ��� l EE��������  ��  ��  � ��� l EE������  � - 'display dialog (count of exceptionList)   � ��� N d i s p l a y   d i a l o g   ( c o u n t   o f   e x c e p t i o n L i s t )� ��� l EE������  �  exceptionList   � ���  e x c e p t i o n L i s t� ��� l EE��������  ��  ��  � ��� O Eb��� I Ka�����
�� .coredelonull���     obj � l K]������ c  K]��� l KY������ 4  KY���
�� 
psxf� l OX������ b  OX��� n OT��� I  PT�������� *0 getcurrentposixpath getCurrentPosixPath��  ��  � o  OP���� 0 utility  � m  TW�� ���  C a c h i n g��  ��  ��  ��  � m  Y\��
�� 
alis��  ��  ��  � m  EH���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� l cc��������  ��  ��  ��   m     ����  Q� ��� l ff��������  ��  ��  � ��� L  fj�� m  fi�� ���   � ���� l kk��������  ��  ��  ��  �W       ���������  � ���������� "0 writetexttofile writeTextToFile�� 0 prependtext prependText�� 0 
fileexists 
FileExists
�� .aevtoappnull  �   � ****� �� ���������� "0 writetexttofile writeTextToFile�� ����� �  �������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent��  � ��������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent� 0 theopenedfile theOpenedFile� �~�}�|�{�z�y�x�w�v�u�t�s�r�q
�~ 
TEXT
�} 
file
�| 
perm
�{ .rdwropenshor       file
�z 
set2
�y .rdwrseofnull���     ****
�x 
refn
�w 
wrat
�v rdwreof �u 
�t .rdwrwritnull���     ****
�s .rdwrclosnull���     ****�r  �q  �� \ >��&E�O*�/�el E�O�e  ��jl Y hO����� 
O�j OeOPW X   *�/j W X  hOf� �p �o�n���m�p 0 prependtext prependText�o �l��l �  �k�j�k (0 targetfilepathname targetFilePathname�j  0 thetexttowrite theTextToWrite�n  � �i�h�g�f�e�d�i (0 targetfilepathname targetFilePathname�h  0 thetexttowrite theTextToWrite�g "0 theoriginaltext theOriginalText�f "0 referencenumber referenceNumber�e 0 estr eStr�d 0 enum eNum�  ��c�b�a�`�_ ��^�]�\�[�Z�Y�X�W� ��V ��U�T ��S�R�Q�P
�c 
as  
�b 
utf8
�a .rdwrread****        ****�`  �_  
�^ 
perm
�] .rdwropenshor       file
�\ 
refn
�[ 
wrat�Z 
�Y .rdwrwritnull���     ****
�X .rdwrclosnull���     ****�W 0 estr eStr� �O�N�M
�O 
errn�N 0 enum eNum�M  
�V 
btns
�U 
dflt
�T 
appr
�S 
disp
�R stic   �Q 
�P .sysodlogaskr        TEXT�m ��E�O ���l E�W X  hO��%�%E�O  ��el E�O�����j� O�j W AX  �a %�%a a kva ka a a a a  O 
�j W X  hOh� �L ��K�J���I�L 0 
fileexists 
FileExists�K �H��H �  �G�G 0 thefile theFile�J  � �F�F 0 thefile theFile�  ��E�D
�E 
file
�D .coredoexnull���     ****�I � *�/j  eY fU� �C ��B�A���@
�C .aevtoappnull  �   � ****�B 0 argv  �A  � �?�? 0 argv  � u�>�=�<�;�:�9�8�7�6�5-�4�3?�2�1�0�/�.i�-{�,�+�*�)�(y�'�&��%�$��#��"�!� �����������������������(+8;ORb�
�	�z��������������%')+-/13� DF��W������������������������>  Q�
�= 
rtyp
�< 
ctxt
�; .earsffdralis        afdr
�: 
psxp
�9 .sysoloadscpt        file�8 0 utility  �7  0 getcurrentpath getCurrentPath
�6 
TEXT�5 0 currentpath currentPath�4 &0 searchcontentpath searchContentPath�3 *0 getcurrentposixpath getCurrentPosixPath�2 &0 htmlcachefilepath htmlCacheFilePath
�1 
from�0 0 jsontorecord JSONtoRecord�/ 0 htmlcachejson htmlCacheJson�. 0 onmutablecopy onMutableCopy�- &0 metadatafontstyle metaDataFontStyle
�, 
kocl
�+ 
cfol
�* 
insh
�) 
prdt
�( 
pnam�' 
�& .corecrel****      � null
�% .sysoexecTEXT���     TEXT
�$ 
capp
�# kfrmID  
�" .EVRNfindnull���     ctxt�! 0 allnotes allNotes
�  .corecnte****       ****
� 
kfil
� 
Expf
� Exffexht� 
� .EVRNenxpnull���     ****� 0 elem  � (0 notetitleindexdict noteTitleIndexDict
� 
reco� 0 i  � 0 exceptionlist exceptionList
� 
cobj
� 
EVet� 0 	notetitle 	noteTitle
� 
EV24� 0 getnoteguid getNoteGuid� 0 noteguid  
� 
EVmm� 0 gettimestring getTimeString� (0 lastestupdateddate lastestUpdatedDate�  0 targetfilename targetFileName� ,0 findandreplaceintext findAndReplaceInText�
 0 getvalue getValue�	 0 	fileindex 	fileIndex� 0 filenameonly fileNameOnly� 0 setvalue setValue� 0 
fileexists 
FileExists
� 
file� $0 notetitleunicode noteTitleUnicode� &0 lasteditedunicode lastEditedUnicode
� 
EVdd�  0 createdunicode createdUnicode�  "0 metadataofnotes metaDataOfNotes�� 0 prependtext prependText�� 0 keysofrecord keysOfRecord�� 0 keystowrite keysToWrite��  0 valuesofrecord valuesOfRecord�� 0 valuestowrite valuesToWrite�� 0 makejson makeJson�� 0 jsoncontent jsonContent�� "0 writetexttofile writeTextToFile
�� 
psxf
�� 
alis
�� .coredelonull���     obj �@m�n)��l �%�,�%j E�O�j+ 	�&E�O��%E�O�j+ �%E` O�a _ l E` O�_ k+ E` Oa E` Oa  *a a a �a a a la  UOa  j !O)a "a #a $0�a %j &E` 'O_ 'j (j  	a )Y hO_ 'a *�a +a ,a - .Oa /a 0lE` 1O�_ 1a 2&k+ E` 1OkE` 3OjvE` 4OhZ_ 'a 5_ 3/a 6,�&E` 7O�_ 'a 5_ 3/a 8,k+ 9E` :O�_ 'a 5_ 3/a ;,k+ <E` =O_ 7E` >O�_ >a ?a @m+ AE` >O�_ >a Ba Cm+ AE` >O�_ >a Da Em+ AE` >O�_ >a Fa Gm+ AE` >O�_ 1a H_ 7%l+ IE` JO_ >E` KO_ J�&a L  #�_ >%a M%E` >O�_ 1a N_ 7%km+ OY ,�_ >%a P%_ J%a Q%E` >O�_ 1a R_ 7%_ Jkm+ OO)_ >k+ Se  �a T _ :a U%*a V_ >/a ,FUO�_ _ :_ =m+ OO_ 'a 5_ 3/a 6,�&E` WO_ 'a 5_ 3/a ;,�&E` XO_ 'a 5_ 3/a Y,�&E` ZOa [_ %a \%_ 7%a ]%a ^%_ %a _%_ X%a `%_ %a a%_ Z%a b%E` cO)�j+ a d%_ :%a e%_ cl+ fOPY _ 4_ K%a g%E` 4O_ 3kE` 3O_ 3_ 'j ( Y h[OY��O�_ k+ hE` iO�_ k+ jE` kO�_ i_ kl+ lE` mO)_ m��&a n%em+ oOPUOa  *a p�j+ a q%/a r&j sUOPoOa tOP ascr  ��ޭ