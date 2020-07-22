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
�� boovfals��     z { z l     ��������  ��  ��   {  |�� | i     } ~ } I     ������
�� .aevtoappnull  �   � ****��  ��   ~ k    �    � � � l     ��������  ��  ��   �  � � � I    �� ���
�� .sysoexecTEXT���     TEXT � m      � � � � � " m k d i r   ' . / C a c h i n g '��   �  � � � l   ��������  ��  ��   �  � � � r     � � � I   �� ���
�� .sysoloadscpt        file � b     � � � n     � � � 1    ��
�� 
psxp � l    ����� � b     � � � l    ����� � I   �� � �
�� .earsffdralis        afdr �  f     � �� ���
�� 
rtyp � m    	��
�� 
ctxt��  ��  ��   � m     � � � � �  : :��  ��   � m     � � � � �  u t i l i t y . s c p t��   � o      ���� 0 utility   �  � � � l   ��������  ��  ��   �  � � � r     � � � m     � � � � �   � o      ���� 	0 query   �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � !  Current Path (mac os path)    � � � � 6   C u r r e n t   P a t h   ( m a c   o s   p a t h ) �  � � � r    ' � � � c    % � � � n   # � � � I    #��������  0 getcurrentpath getCurrentPath��  ��   � o    ���� 0 utility   � m   # $��
�� 
TEXT � o      ���� 0 currentpath currentPath �  � � � l  ( (��������  ��  ��   �  � � � l  ( (�� � ���   � #  Cache json path	(posix path)    � � � � :   C a c h e   j s o n   p a t h 	 ( p o s i x   p a t h ) �  � � � r   ( 5 � � � b   ( 1 � � � l  ( - ����� � n  ( - � � � I   ) -��~�}� *0 getcurrentposixpath getCurrentPosixPath�~  �}   � o   ( )�|�| 0 utility  ��  ��   � m   - 0 � � � � � 8 s e a r c h _ c o n t e n t / C a c h e L o g . j s o n � o      �{�{ 0 filepath filePath �  � � � l  6 6�z�y�x�z  �y  �x   �  � � � l  6 6�w � ��w   �  
 cache map    � � � �    c a c h e   m a p �  � � � r   6 E � � � I  6 A�v � ��v 0 jsontorecord JSONtoRecord � o   6 7�u�u 0 utility   � �t ��s
�t 
from � o   : =�r�r 0 filepath filePath�s   � o      �q�q 0 	cachejson 	cacheJson �  � � � l  F F�p�o�n�p  �o  �n   �  � � � l  F F�m � ��m   � ? 9 todo: json�� ��� �ְų� ������ Ʋ���� ���⼭ ������ ��.    � � � � L   t o d o :   j s o n�t  �DŴ  ǈ�p��  ����t  �����t  ��0�  �з�   �� . �  � � � r   F R � � � n  F N � � � I   G N�l ��k�l 0 onmutablecopy onMutableCopy �  ��j � o   G J�i�i 0 	cachejson 	cacheJson�j  �k   � o   F G�h�h 0 utility   � o      �g�g 0 	cachejson 	cacheJson �  � � � l  S S�f�e�d�f  �e  �d   �  � � � I  S Z�c ��b
�c .sysoexecTEXT���     TEXT � m   S V � � � � � > o p e n   / A p p l i c a t i o n s / E v e r n o t e . a p p�b   �  � � � l  [ [�a�`�_�a  �`  �_   �  � � � O   [ o � � � I  i n�^�]�\
�^ .miscactvnull��� ��� null�]  �\   � 5   [ f�[ ��Z
�[ 
capp � m   _ b � � � � � * c o m . e v e r n o t e . E v e r n o t e
�Z kfrmID   �  � � � l  p p�Y�X�W�Y  �X  �W   �  � � � O   p� � � � k   ~� � �  � � � l  ~ ~�V�U�T�V  �U  �T   �  � � � r   ~ � � � � I  ~ ��S �R
�S .EVRNfindnull���     ctxt  o   ~ �Q�Q 	0 query  �R   � o      �P�P 0 matches   �  l  � ��O�N�M�O  �N  �M    r   � � m   � ��L�L  o      �K�K 0 i    l  � ��J�I�H�J  �I  �H   	
	 T   �� k   ��  r   � � n   � � 1   � ��G
�G 
EVhl l  � ��F�E n   � � 4   � ��D
�D 
cobj o   � ��C�C 0 i   o   � ��B�B 0 matches  �F  �E   o      �A�A 0 htmlcontent htmlContent  l  � ��@�?�>�@  �?  �>    r   � � n  � � I   � ��=�<�= 0 getnoteguid getNoteGuid  �;  n   � �!"! 1   � ��:
�: 
EV24" l  � �#�9�8# n   � �$%$ 4   � ��7&
�7 
cobj& o   � ��6�6 0 i  % o   � ��5�5 0 matches  �9  �8  �;  �<   o   � ��4�4 0 utility   o      �3�3 0 noteguid   '(' l  � ��2�1�0�2  �1  �0  ( )*) r   � �+,+ b   � �-.- b   � �/0/ b   � �121 n  � �343 I   � ��/�.�-�/ *0 getcurrentposixpath getCurrentPosixPath�.  �-  4 o   � ��,�, 0 utility  2 m   � �55 �66  s e a r c h _ c o n t e n t /0 o   � ��+�+ 0 noteguid  . m   � �77 �88 
 . h t m l, o      �*�* 0 quicklookurl quickLookURL* 9:9 l  � ��)�(�'�)  �(  �'  : ;<; l  � ��&=>�&  = N Hset lastestUpdatedDateString to modification date of (item i of matches)   > �?? � s e t   l a s t e s t U p d a t e d D a t e S t r i n g   t o   m o d i f i c a t i o n   d a t e   o f   ( i t e m   i   o f   m a t c h e s )< @A@ r   � �BCB n  � �DED I   � ��%F�$�% 0 gettimestring getTimeStringF G�#G n   � �HIH 1   � ��"
�" 
EVmmI l  � �J�!� J n   � �KLK 4   � ��M
� 
cobjM o   � ��� 0 i  L o   � ��� 0 matches  �!  �   �#  �$  E o   � ��� 0 utility  C o      �� (0 lastestupdateddate lastestUpdatedDateA NON l  � �����  �  �  O PQP l  � ��RS�  R   latest cache   S �TT    l a t e s t   c a c h eQ UVU r   � �WXW n  � �YZY I   � ��[�� 0 getvalue getValue[ \]\ o   � ��� 0 	cachejson 	cacheJson] ^�^ o   � ��� 0 noteguid  �  �  Z o   � ��� 0 utility  X o      �� $0 cacheupdatedtime cacheUpdatedTimeV _`_ l  � �����  �  �  ` aba Z   �qcde�c =  �fgf c   �hih o   � ��� $0 cacheupdatedtime cacheUpdatedTimei m   � �

�
 
TEXTg m  jj �kk  m i s s i n g   v a l u ed k  3ll mnm l �	op�	  o * $set fileWriteNum to fileWriteNum + 1   p �qq H s e t   f i l e W r i t e N u m   t o   f i l e W r i t e N u m   +   1n rsr n tut I  	�v�� 0 setvalue setValuev wxw o  	�� 0 	cachejson 	cacheJsonx yzy o  �� 0 noteguid  z {�{ o  �� (0 lastestupdateddate lastestUpdatedDate�  �  u o  	�� 0 utility  s |}| n 1~~ I  1��� � "0 writetexttofile writeTextToFile� ��� o  ���� 0 htmlcontent htmlContent� ��� b  ,��� b  (��� b  $��� b   ��� o  ���� 0 currentpath currentPath� m  �� ���  : s e a r c h _ c o n t e n t� m   #�� ���  :� o  $'���� 0 noteguid  � m  (+�� ��� 
 . h t m l� ���� m  ,-��
�� boovtrue��  �     f  } ���� l 22��������  ��  ��  ��  e ��� A  6A��� l 6=������ c  6=��� o  69���� $0 cacheupdatedtime cacheUpdatedTime� m  9<��
�� 
nmbr��  ��  � o  =@���� (0 lastestupdateddate lastestUpdatedDate� ���� k  Dm�� ��� l DD������  � * $set fileWriteNum to fileWriteNum + 1   � ��� H s e t   f i l e W r i t e N u m   t o   f i l e W r i t e N u m   +   1� ��� n DR��� I  ER������� 0 setvalue setValue� ��� o  EH���� 0 	cachejson 	cacheJson� ��� o  HK���� 0 noteguid  � ���� o  KN���� (0 lastestupdateddate lastestUpdatedDate��  ��  � o  DE���� 0 utility  � ���� n Sm��� I  Tm������� "0 writetexttofile writeTextToFile� ��� o  TW���� 0 htmlcontent htmlContent� ��� b  Wh��� b  Wd��� b  W`��� b  W\��� o  WX���� 0 currentpath currentPath� m  X[�� ���  : s e a r c h _ c o n t e n t� m  \_�� ���  :� o  `c���� 0 noteguid  � m  dg�� ��� 
 . h t m l� ���� m  hi��
�� boovtrue��  ��  �  f  ST��  ��  �  b ��� l rr��������  ��  ��  � ��� r  r{��� [  rw��� o  ru���� 0 i  � m  uv���� � o      ���� 0 i  � ��� l ||��������  ��  ��  � ��� Z  |�������� l |������� ?  |���� o  |���� 0 i  � l ������� I ������
�� .corecnte****       ****� o  ����� 0 matches  ��  ��  ��  ��  ��  �  S  ����  ��  � ���� l ����������  ��  ��  ��  
 ���� l ����������  ��  ��  ��   � 5   p {�����
�� 
capp� m   t w�� ��� * c o m . e v e r n o t e . E v e r n o t e
�� kfrmID   � ��� l ����������  ��  ��  � ��� r  ����� n ����� I  ��������� 0 keysofrecord keysOfRecord� ���� o  ������ 0 	cachejson 	cacheJson��  ��  � o  ������ 0 utility  � o      ���� 0 keystowrite keysToWrite� ��� r  ����� n ����� I  ���������  0 valuesofrecord valuesOfRecord� ���� o  ������ 0 	cachejson 	cacheJson��  ��  � o  ������ 0 utility  � o      ���� 0 valuestowrite valuesToWrite� ��� l ����������  ��  ��  � ��� r  ����� n ����� I  ��������� 0 makejson makeJson� ��� o  ������ 0 keystowrite keysToWrite� ���� o  ������ 0 valuestowrite valuesToWrite��  ��  � o  ������ 0 utility  � o      ���� 0 jsoncontent jsonContent� ��� l ����������  ��  ��  � ��� l ��������  � ! display dialog fileWriteNum   � �   6 d i s p l a y   d i a l o g   f i l e W r i t e N u m�  n �� I  �������� "0 writetexttofile writeTextToFile  o  ������ 0 jsoncontent jsonContent 	 b  ��

 l ������ c  �� o  ������ 0 currentpath currentPath m  ����
�� 
TEXT��  ��   m  �� � : : s e a r c h _ c o n t e n t : C a c h e L o g . j s o n	 �� m  ����
�� boovtrue��  ��    f  ��  l ����������  ��  ��    I ������
�� .sysoexecTEXT���     TEXT m  �� � " r m d i r   ' . / C a c h i n g '��    l ����������  ��  ��    L  �� m  �� �     ��  l ����������  ��  ��  ��  ��       ��!"#��  ! ������ "0 writetexttofile writeTextToFile
�� .aevtoappnull  �   � ****" �� ����$%���� "0 writetexttofile writeTextToFile�� ��&�� &  �������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent��  $ ���������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent�� 0 theopenedfile theOpenedFile% ��������~�}�|�{�z�y�x�w�v�u
�� 
TEXT
�� 
file
�� 
perm
� .rdwropenshor       file
�~ 
set2
�} .rdwrseofnull���     ****
�| 
refn
�{ 
wrat
�z rdwreof �y 
�x .rdwrwritnull���     ****
�w .rdwrclosnull���     ****�v  �u  �� \ >��&E�O*�/�el E�O�e  ��jl Y hO����� 
O�j OeOPW X   *�/j W X  hOf# �t ~�s�r'(�q
�t .aevtoappnull  �   � ****�s  �r  '  ( A ��p�o�n�m ��l ��k�j ��i�h�g�f�e ��d�c�b�a�` ��_ ��^�]��\�[�Z�Y�X�W�V�U�T57�S�R�Q�P�O�Nj�M����L�K����J�I�H�G�F�E�D
�p .sysoexecTEXT���     TEXT
�o 
rtyp
�n 
ctxt
�m .earsffdralis        afdr
�l 
psxp
�k .sysoloadscpt        file�j 0 utility  �i 	0 query  �h  0 getcurrentpath getCurrentPath
�g 
TEXT�f 0 currentpath currentPath�e *0 getcurrentposixpath getCurrentPosixPath�d 0 filepath filePath
�c 
from�b 0 jsontorecord JSONtoRecord�a 0 	cachejson 	cacheJson�` 0 onmutablecopy onMutableCopy
�_ 
capp
�^ kfrmID  
�] .miscactvnull��� ��� null
�\ .EVRNfindnull���     ctxt�[ 0 matches  �Z 0 i  
�Y 
cobj
�X 
EVhl�W 0 htmlcontent htmlContent
�V 
EV24�U 0 getnoteguid getNoteGuid�T 0 noteguid  �S 0 quicklookurl quickLookURL
�R 
EVmm�Q 0 gettimestring getTimeString�P (0 lastestupdateddate lastestUpdatedDate�O 0 getvalue getValue�N $0 cacheupdatedtime cacheUpdatedTime�M 0 setvalue setValue�L "0 writetexttofile writeTextToFile
�K 
nmbr
�J .corecnte****       ****�I 0 keysofrecord keysOfRecord�H 0 keystowrite keysToWrite�G  0 valuesofrecord valuesOfRecord�F 0 valuestowrite valuesToWrite�E 0 makejson makeJson�D 0 jsoncontent jsonContent�q��j O)��l �%�,�%j E�O�E�O�j+ �&E�O�j+ a %E` O�a _ l E` O�_ k+ E` Oa j O)a a a 0 *j UO)a a a 0�j E` OkE` OhZ_ a _ /a  ,E` !O�_ a _ /a ",k+ #E` $O�j+ a %%_ $%a &%E` 'O�_ a _ /a (,k+ )E` *O�_ _ $l+ +E` ,O_ ,�&a -  0�_ _ $_ *m+ .O)_ !�a /%a 0%_ $%a 1%em+ 2OPY =_ ,a 3&_ * .�_ _ $_ *m+ .O)_ !�a 4%a 5%_ $%a 6%em+ 2Y hO_ kE` O_ _ j 7 Y hOP[OY��OPUO�_ k+ 8E` 9O�_ k+ :E` ;O�_ 9_ ;l+ <E` =O)_ =��&a >%em+ 2Oa ?j Oa @OP ascr  ��ޭ