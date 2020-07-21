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
from � o   : =�r�r 0 filepath filePath�s   � o      �q�q 0 	cachejson 	cacheJson �  � � � l  F F�p�o�n�p  �o  �n   �  � � � l  F F�m � ��m   � ? 9 todo: json�� ��� �ְų� ������ Ʋ���� ���⼭ ������ ��.    � � � � L   t o d o :   j s o n�t  �DŴ  ǈ�p��  ����t  �����t  ��0�  �з�   �� . �  � � � r   F R � � � n  F N � � � I   G N�l ��k�l 0 onmutablecopy onMutableCopy �  ��j � o   G J�i�i 0 	cachejson 	cacheJson�j  �k   � o   F G�h�h 0 utility   � o      �g�g 0 	cachejson 	cacheJson �  � � � l  S S�f�e�d�f  �e  �d   �  � � � O   S g � � � I  a f�c�b�a
�c .miscactvnull��� ��� null�b  �a   � 5   S ^�` ��_
�` 
capp � m   W Z � � � � � * c o m . e v e r n o t e . E v e r n o t e
�_ kfrmID   �  � � � l  h h�^�]�\�^  �]  �\   �  � � � O   h� � � � k   v� � �  � � � l  v v�[�Z�Y�[  �Z  �Y   �  � � � r   v  � � � I  v {�X ��W
�X .EVRNfindnull���     ctxt � o   v w�V�V 	0 query  �W   � o      �U�U 0 matches   �  � � � l  � ��T�S�R�T  �S  �R   �  � � � r   � � � � � m   � ��Q�Q  � o      �P�P 0 i   �    l  � ��O�N�M�O  �N  �M    T   �� k   ��  r   � �	 n   � �

 1   � ��L
�L 
EVhl l  � ��K�J n   � � 4   � ��I
�I 
cobj o   � ��H�H 0 i   o   � ��G�G 0 matches  �K  �J  	 o      �F�F 0 htmlcontent htmlContent  l  � ��E�D�C�E  �D  �C    r   � � n  � � I   � ��B�A�B 0 getnoteguid getNoteGuid �@ n   � � 1   � ��?
�? 
EV24 l  � ��>�= n   � � 4   � ��<
�< 
cobj o   � ��;�; 0 i   o   � ��:�: 0 matches  �>  �=  �@  �A   o   � ��9�9 0 utility   o      �8�8 0 noteguid    !  l  � ��7�6�5�7  �6  �5  ! "#" r   � �$%$ b   � �&'& b   � �()( b   � �*+* n  � �,-, I   � ��4�3�2�4 *0 getcurrentposixpath getCurrentPosixPath�3  �2  - o   � ��1�1 0 utility  + m   � �.. �//  s e a r c h _ c o n t e n t /) o   � ��0�0 0 noteguid  ' m   � �00 �11 
 . h t m l% o      �/�/ 0 quicklookurl quickLookURL# 232 l  � ��.�-�,�.  �-  �,  3 454 l  � ��+67�+  6 N Hset lastestUpdatedDateString to modification date of (item i of matches)   7 �88 � s e t   l a s t e s t U p d a t e d D a t e S t r i n g   t o   m o d i f i c a t i o n   d a t e   o f   ( i t e m   i   o f   m a t c h e s )5 9:9 r   � �;<; n  � �=>= I   � ��*?�)�* 0 gettimestring getTimeString? @�(@ n   � �ABA 1   � ��'
�' 
EVmmB l  � �C�&�%C n   � �DED 4   � ��$F
�$ 
cobjF o   � ��#�# 0 i  E o   � ��"�" 0 matches  �&  �%  �(  �)  > o   � ��!�! 0 utility  < o      � �  (0 lastestupdateddate lastestUpdatedDate: GHG l  � �����  �  �  H IJI l  � ��KL�  K   latest cache   L �MM    l a t e s t   c a c h eJ NON r   � �PQP n  � �RSR I   � ��T�� 0 getvalue getValueT UVU o   � ��� 0 	cachejson 	cacheJsonV W�W o   � ��� 0 noteguid  �  �  S o   � ��� 0 utility  Q o      �� $0 cacheupdatedtime cacheUpdatedTimeO XYX l  � �����  �  �  Y Z[Z Z   �i\]^�\ =  � �_`_ c   � �aba o   � ��� $0 cacheupdatedtime cacheUpdatedTimeb m   � ��
� 
TEXT` m   � �cc �dd  m i s s i n g   v a l u e] k   +ee fgf l   �hi�  h * $set fileWriteNum to fileWriteNum + 1   i �jj H s e t   f i l e W r i t e N u m   t o   f i l e W r i t e N u m   +   1g klk n  mnm I  �o�� 0 setvalue setValueo pqp o  �� 0 	cachejson 	cacheJsonq rsr o  �
�
 0 noteguid  s t�	t o  
�� (0 lastestupdateddate lastestUpdatedDate�	  �  n o   �� 0 utility  l uvu n )wxw I  )�y�� "0 writetexttofile writeTextToFiley z{z o  �� 0 htmlcontent htmlContent{ |}| b  $~~ b   ��� b  ��� b  ��� o  �� 0 currentpath currentPath� m  �� ���  : s e a r c h _ c o n t e n t� m  �� ���  :� o  �� 0 noteguid   m   #�� ��� 
 . h t m l} ��� m  $%� 
�  boovtrue�  �  x  f  v ���� l **��������  ��  ��  ��  ^ ��� A  .9��� l .5������ c  .5��� o  .1���� $0 cacheupdatedtime cacheUpdatedTime� m  14��
�� 
nmbr��  ��  � o  58���� (0 lastestupdateddate lastestUpdatedDate� ���� k  <e�� ��� l <<������  � * $set fileWriteNum to fileWriteNum + 1   � ��� H s e t   f i l e W r i t e N u m   t o   f i l e W r i t e N u m   +   1� ��� n <J��� I  =J������� 0 setvalue setValue� ��� o  =@���� 0 	cachejson 	cacheJson� ��� o  @C���� 0 noteguid  � ���� o  CF���� (0 lastestupdateddate lastestUpdatedDate��  ��  � o  <=���� 0 utility  � ���� n Ke��� I  Le������� "0 writetexttofile writeTextToFile� ��� o  LO���� 0 htmlcontent htmlContent� ��� b  O`��� b  O\��� b  OX��� b  OT��� o  OP���� 0 currentpath currentPath� m  PS�� ���  : s e a r c h _ c o n t e n t� m  TW�� ���  :� o  X[���� 0 noteguid  � m  \_�� ��� 
 . h t m l� ���� m  `a��
�� boovtrue��  ��  �  f  KL��  ��  �  [ ��� l jj��������  ��  ��  � ��� r  js��� [  jo��� o  jm���� 0 i  � m  mn���� � o      ���� 0 i  � ��� l tt��������  ��  ��  � ��� Z  t�������� l t������ ?  t��� o  tw���� 0 i  � l w~������ I w~�����
�� .corecnte****       ****� o  wz���� 0 matches  ��  ��  ��  ��  ��  �  S  ����  ��  � ���� l ����������  ��  ��  ��   ���� l ����������  ��  ��  ��   � 5   h s�����
�� 
capp� m   l o�� ��� * c o m . e v e r n o t e . E v e r n o t e
�� kfrmID   � ��� l ����������  ��  ��  � ��� r  ����� n ����� I  ��������� 0 keysofrecord keysOfRecord� ���� o  ������ 0 	cachejson 	cacheJson��  ��  � o  ������ 0 utility  � o      ���� 0 keystowrite keysToWrite� ��� r  ����� n ����� I  ���������  0 valuesofrecord valuesOfRecord� ���� o  ������ 0 	cachejson 	cacheJson��  ��  � o  ������ 0 utility  � o      ���� 0 valuestowrite valuesToWrite� ��� l ����������  ��  ��  � ��� r  ����� n ����� I  ��������� 0 makejson makeJson� ��� o  ������ 0 keystowrite keysToWrite� ���� o  ������ 0 valuestowrite valuesToWrite��  ��  � o  ������ 0 utility  � o      ���� 0 jsoncontent jsonContent� ��� l ����������  ��  ��  � ��� l ��������  � ! display dialog fileWriteNum   � ��� 6 d i s p l a y   d i a l o g   f i l e W r i t e N u m� ��� n ����� I  ��������� "0 writetexttofile writeTextToFile� � � o  ������ 0 jsoncontent jsonContent   b  �� l ������ c  �� o  ������ 0 currentpath currentPath m  ����
�� 
TEXT��  ��   m  �� �		 : : s e a r c h _ c o n t e n t : C a c h e L o g . j s o n 
��
 m  ����
�� boovtrue��  ��  �  f  ���  l ����������  ��  ��    I ������
�� .sysoexecTEXT���     TEXT m  �� � " r m d i r   ' . / C a c h i n g '��    l ����������  ��  ��    L  �� m  �� �    �� l ����������  ��  ��  ��  ��       ����   ������ "0 writetexttofile writeTextToFile
�� .aevtoappnull  �   � **** �� �������� "0 writetexttofile writeTextToFile�� ����   �������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent��   ���������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent�� 0 theopenedfile theOpenedFile ������������������~�}�|�{�z
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
� rdwreof �~ 
�} .rdwrwritnull���     ****
�| .rdwrclosnull���     ****�{  �z  �� \ >��&E�O*�/�el E�O�e  ��jl Y hO����� 
O�j OeOPW X   *�/j W X  hOf �y ~�x�w !�v
�y .aevtoappnull  �   � ****�x  �w     ! @ ��u�t�s�r ��q ��p�o ��n�m�l�k�j ��i�h�g�f�e�d ��c�b��a�`�_�^�]�\�[�Z�Y.0�X�W�V�U�T�Sc�R����Q�P����O�N�M�L�K�J�I
�u .sysoexecTEXT���     TEXT
�t 
rtyp
�s 
ctxt
�r .earsffdralis        afdr
�q 
psxp
�p .sysoloadscpt        file�o 0 utility  �n 	0 query  �m  0 getcurrentpath getCurrentPath
�l 
TEXT�k 0 currentpath currentPath�j *0 getcurrentposixpath getCurrentPosixPath�i 0 filepath filePath
�h 
from�g 0 jsontorecord JSONtoRecord�f 0 	cachejson 	cacheJson�e 0 onmutablecopy onMutableCopy
�d 
capp
�c kfrmID  
�b .miscactvnull��� ��� null
�a .EVRNfindnull���     ctxt�` 0 matches  �_ 0 i  
�^ 
cobj
�] 
EVhl�\ 0 htmlcontent htmlContent
�[ 
EV24�Z 0 getnoteguid getNoteGuid�Y 0 noteguid  �X 0 quicklookurl quickLookURL
�W 
EVmm�V 0 gettimestring getTimeString�U (0 lastestupdateddate lastestUpdatedDate�T 0 getvalue getValue�S $0 cacheupdatedtime cacheUpdatedTime�R 0 setvalue setValue�Q "0 writetexttofile writeTextToFile
�P 
nmbr
�O .corecnte****       ****�N 0 keysofrecord keysOfRecord�M 0 keystowrite keysToWrite�L  0 valuesofrecord valuesOfRecord�K 0 valuestowrite valuesToWrite�J 0 makejson makeJson�I 0 jsoncontent jsonContent�v��j O)��l �%�,�%j E�O�E�O�j+ �&E�O�j+ a %E` O�a _ l E` O�_ k+ E` O)a a a 0 *j UO)a a a 0�j E` OkE` OhZ_ a _ /a ,E`  O�_ a _ /a !,k+ "E` #O�j+ a $%_ #%a %%E` &O�_ a _ /a ',k+ (E` )O�_ _ #l+ *E` +O_ +�&a ,  0�_ _ #_ )m+ -O)_  �a .%a /%_ #%a 0%em+ 1OPY =_ +a 2&_ ) .�_ _ #_ )m+ -O)_  �a 3%a 4%_ #%a 5%em+ 1Y hO_ kE` O_ _ j 6 Y hOP[OY��OPUO�_ k+ 7E` 8O�_ k+ 9E` :O�_ 8_ :l+ ;E` <O)_ <��&a =%em+ 1Oa >j Oa ?OPascr  ��ޭ