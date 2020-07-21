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
from � o   : =�r�r 0 filepath filePath�s   � o      �q�q 0 	cachejson 	cacheJson �  � � � l  F F�p�o�n�p  �o  �n   �  � � � l  F F�m � ��m   � ? 9 todo: json�� ��� �ְų� ������ Ʋ���� ���⼭ ������ ��.    � � � � L   t o d o :   j s o n�t  �DŴ  ǈ�p��  ����t  �����t  ��0�  �з�   �� . �  � � � r   F R � � � n  F N � � � I   G N�l ��k�l 0 onmutablecopy onMutableCopy �  ��j � o   G J�i�i 0 	cachejson 	cacheJson�j  �k   � o   F G�h�h 0 utility   � o      �g�g 0 	cachejson 	cacheJson �  � � � l  S S�f�e�d�f  �e  �d   �  � � � O   S| � � � k   a{ � �  � � � r   a j � � � I  a f�c ��b
�c .EVRNfindnull���     ctxt � o   a b�a�a 	0 query  �b   � o      �`�` 0 matches   �  � � � l  k k�_�^�]�_  �^  �]   �  � � � r   k p � � � m   k l�\�\  � o      �[�[ 0 i   �  � � � l  q q�Z�Y�X�Z  �Y  �X   �  � � � T   qy � � k   vt � �  � � � r   v � � � � n   v � �  � 1   � ��W
�W 
EVhl  l  v ��V�U n   v � 4   y ��T
�T 
cobj o   | �S�S 0 i   o   v y�R�R 0 matches  �V  �U   � o      �Q�Q 0 htmlcontent htmlContent �  l  � ��P�O�N�P  �O  �N    r   � �	
	 n  � � I   � ��M�L�M 0 getnoteguid getNoteGuid �K n   � � 1   � ��J
�J 
EV24 l  � ��I�H n   � � 4   � ��G
�G 
cobj o   � ��F�F 0 i   o   � ��E�E 0 matches  �I  �H  �K  �L   o   � ��D�D 0 utility  
 o      �C�C 0 noteguid    l  � ��B�A�@�B  �A  �@    r   � � b   � � b   � � b   � �  n  � �!"! I   � ��?�>�=�? *0 getcurrentposixpath getCurrentPosixPath�>  �=  " o   � ��<�< 0 utility    m   � �## �$$  s e a r c h _ c o n t e n t / o   � ��;�; 0 noteguid   m   � �%% �&& 
 . h t m l o      �:�: 0 quicklookurl quickLookURL '(' l  � ��9�8�7�9  �8  �7  ( )*) l  � ��6+,�6  + N Hset lastestUpdatedDateString to modification date of (item i of matches)   , �-- � s e t   l a s t e s t U p d a t e d D a t e S t r i n g   t o   m o d i f i c a t i o n   d a t e   o f   ( i t e m   i   o f   m a t c h e s )* ./. r   � �010 n  � �232 I   � ��54�4�5 0 gettimestring getTimeString4 5�35 n   � �676 1   � ��2
�2 
EVmm7 l  � �8�1�08 n   � �9:9 4   � ��/;
�/ 
cobj; o   � ��.�. 0 i  : o   � ��-�- 0 matches  �1  �0  �3  �4  3 o   � ��,�, 0 utility  1 o      �+�+ (0 lastestupdateddate lastestUpdatedDate/ <=< l  � ��*�)�(�*  �)  �(  = >?> l  � ��'@A�'  @   latest cache   A �BB    l a t e s t   c a c h e? CDC r   � �EFE n  � �GHG I   � ��&I�%�& 0 getvalue getValueI JKJ o   � ��$�$ 0 	cachejson 	cacheJsonK L�#L o   � ��"�" 0 noteguid  �#  �%  H o   � ��!�! 0 utility  F o      � �  $0 cacheupdatedtime cacheUpdatedTimeD MNM l  � �����  �  �  N OPO Z   �TQRS�Q =  � �TUT c   � �VWV o   � ��� $0 cacheupdatedtime cacheUpdatedTimeW m   � ��
� 
TEXTU m   � �XX �YY  m i s s i n g   v a l u eR k   �ZZ [\[ l  � ��]^�  ] * $set fileWriteNum to fileWriteNum + 1   ^ �__ H s e t   f i l e W r i t e N u m   t o   f i l e W r i t e N u m   +   1\ `a` n  � �bcb I   � ��d�� 0 setvalue setValued efe o   � ��� 0 	cachejson 	cacheJsonf ghg o   � ��� 0 noteguid  h i�i o   � ��� (0 lastestupdateddate lastestUpdatedDate�  �  c o   � ��� 0 utility  a jkj n  �lml I   ��n�� "0 writetexttofile writeTextToFilen opo o   � ��� 0 htmlcontent htmlContentp qrq b   �sts b   �uvu b   �wxw b   �yzy o   � ��� 0 currentpath currentPathz m   �{{ �||  : s e a r c h _ c o n t e n tx m  }} �~~  :v o  
�� 0 noteguid  t m   ��� 
 . h t m lr ��� m  �
� boovtrue�  �  m  f   � �k ��
� l �	���	  �  �  �
  S ��� A  $��� l  ���� c   ��� o  �� $0 cacheupdatedtime cacheUpdatedTime� m  �
� 
nmbr�  �  � o   #�� (0 lastestupdateddate lastestUpdatedDate� ��� k  'P�� ��� l ''� ���   � * $set fileWriteNum to fileWriteNum + 1   � ��� H s e t   f i l e W r i t e N u m   t o   f i l e W r i t e N u m   +   1� ��� n '5��� I  (5������� 0 setvalue setValue� ��� o  (+���� 0 	cachejson 	cacheJson� ��� o  +.���� 0 noteguid  � ���� o  .1���� (0 lastestupdateddate lastestUpdatedDate��  ��  � o  '(���� 0 utility  � ���� n 6P��� I  7P������� "0 writetexttofile writeTextToFile� ��� o  7:���� 0 htmlcontent htmlContent� ��� b  :K��� b  :G��� b  :C��� b  :?��� o  :;���� 0 currentpath currentPath� m  ;>�� ���  : s e a r c h _ c o n t e n t� m  ?B�� ���  :� o  CF���� 0 noteguid  � m  GJ�� ��� 
 . h t m l� ���� m  KL��
�� boovtrue��  ��  �  f  67��  �  �  P ��� l UU��������  ��  ��  � ��� r  U^��� [  UZ��� o  UX���� 0 i  � m  XY���� � o      ���� 0 i  � ��� l __��������  ��  ��  � ��� Z  _r������� l _j������ ?  _j��� o  _b���� 0 i  � l bi������ I bi�����
�� .corecnte****       ****� o  be���� 0 matches  ��  ��  ��  ��  ��  �  S  mn��  ��  � ���� l ss��������  ��  ��  ��   � ���� l zz��������  ��  ��  ��   � 5   S ^�����
�� 
capp� m   W Z�� ��� * c o m . e v e r n o t e . E v e r n o t e
�� kfrmID   � ��� l }}��������  ��  ��  � ��� r  }���� n }���� I  ~�������� 0 keysofrecord keysOfRecord� ���� o  ~����� 0 	cachejson 	cacheJson��  ��  � o  }~���� 0 utility  � o      ���� 0 keystowrite keysToWrite� ��� r  ����� n ����� I  ���������  0 valuesofrecord valuesOfRecord� ���� o  ������ 0 	cachejson 	cacheJson��  ��  � o  ������ 0 utility  � o      ���� 0 valuestowrite valuesToWrite� ��� l ����������  ��  ��  � ��� r  ����� n ����� I  ��������� 0 makejson makeJson� ��� o  ������ 0 keystowrite keysToWrite� ���� o  ������ 0 valuestowrite valuesToWrite��  ��  � o  ������ 0 utility  � o      ���� 0 jsoncontent jsonContent� ��� l ����������  ��  ��  � ��� l ��������  � ! display dialog fileWriteNum   � ��� 6 d i s p l a y   d i a l o g   f i l e W r i t e N u m� ��� n ����� I  ��������� "0 writetexttofile writeTextToFile� ��� o  ������ 0 jsoncontent jsonContent� ��� b  ����� l �������� c  ����� o  ������ 0 currentpath currentPath� m  ����
�� 
TEXT��  ��  � m  ���� ��� : : s e a r c h _ c o n t e n t : C a c h e L o g . j s o n� ���� m  ����
�� boovtrue��  ��  �  f  ���    l ����������  ��  ��    I ������
�� .sysoexecTEXT���     TEXT m  �� � " r m d i r   ' . / C a c h i n g '��    l ����������  ��  ��   	
	 L  �� m  �� �   
 �� l ����������  ��  ��  ��  ��       ����   ������ "0 writetexttofile writeTextToFile
�� .aevtoappnull  �   � **** �� �������� "0 writetexttofile writeTextToFile�� ����   �������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent��   ���������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent�� 0 theopenedfile theOpenedFile ����������������������������
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
�� .rdwrclosnull���     ****��  ��  �� \ >��&E�O*�/�el E�O�e  ��jl Y hO����� 
O�j OeOPW X   *�/j W X  hOf �� ~������
�� .aevtoappnull  �   � ****��  ��     > �����~�} ��| ��{�z ��y�x�w�v�u ��t�s�r�q�p�o��n�m�l�k�j�i�h�g�f�e#%�d�c�b�a�`�_X�^{}�]�\����[�Z�Y�X�W�V�U�
�� .sysoexecTEXT���     TEXT
� 
rtyp
�~ 
ctxt
�} .earsffdralis        afdr
�| 
psxp
�{ .sysoloadscpt        file�z 0 utility  �y 	0 query  �x  0 getcurrentpath getCurrentPath
�w 
TEXT�v 0 currentpath currentPath�u *0 getcurrentposixpath getCurrentPosixPath�t 0 filepath filePath
�s 
from�r 0 jsontorecord JSONtoRecord�q 0 	cachejson 	cacheJson�p 0 onmutablecopy onMutableCopy
�o 
capp
�n kfrmID  
�m .EVRNfindnull���     ctxt�l 0 matches  �k 0 i  
�j 
cobj
�i 
EVhl�h 0 htmlcontent htmlContent
�g 
EV24�f 0 getnoteguid getNoteGuid�e 0 noteguid  �d 0 quicklookurl quickLookURL
�c 
EVmm�b 0 gettimestring getTimeString�a (0 lastestupdateddate lastestUpdatedDate�` 0 getvalue getValue�_ $0 cacheupdatedtime cacheUpdatedTime�^ 0 setvalue setValue�] "0 writetexttofile writeTextToFile
�\ 
nmbr
�[ .corecnte****       ****�Z 0 keysofrecord keysOfRecord�Y 0 keystowrite keysToWrite�X  0 valuesofrecord valuesOfRecord�W 0 valuestowrite valuesToWrite�V 0 makejson makeJson�U 0 jsoncontent jsonContent����j O)��l �%�,�%j E�O�E�O�j+ �&E�O�j+ a %E` O�a _ l E` O�_ k+ E` O)a a a 0�j E` OkE` OhZ_ a _ /a ,E` O�_ a _ /a ,k+  E` !O�j+ a "%_ !%a #%E` $O�_ a _ /a %,k+ &E` 'O�_ _ !l+ (E` )O_ )�&a *  0�_ _ !_ 'm+ +O)_ �a ,%a -%_ !%a .%em+ /OPY =_ )a 0&_ ' .�_ _ !_ 'm+ +O)_ �a 1%a 2%_ !%a 3%em+ /Y hO_ kE` O_ _ j 4 Y hOP[OY��OPUO�_ k+ 5E` 6O�_ k+ 7E` 8O�_ 6_ 8l+ 9E` :O)_ :��&a ;%em+ /Oa <j Oa =OP ascr  ��ޭ