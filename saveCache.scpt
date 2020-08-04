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
�V .aevtoappnull  �   � **** � o      �T�T 0 argv  �U   � k    � � �  � � � l     �S�R�Q�S  �R  �Q   �  � � � l     �P � ��P   �    very long time (24 hours)    � � � � 4   v e r y   l o n g   t i m e   ( 2 4   h o u r s ) �    t    � k   �  l   �O�N�M�O  �N  �M    r    	
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
TEXT  o      �8�8 0 currentpath currentPath %&% l     �7�6�5�7  �6  �5  & '(' r     %)*) b     #+,+ o     !�4�4 0 currentpath currentPath, m   ! "-- �..   : s e a r c h _ c o n t e n t :* o      �3�3 &0 searchcontentpath searchContentPath( /0/ l  & &�2�1�0�2  �1  �0  0 121 l  & &�/34�/  3 #  Cache json path	(posix path)   4 �55 :   C a c h e   j s o n   p a t h 	 ( p o s i x   p a t h )2 676 r   & 1898 b   & -:;: l  & +<�.�-< n  & +=>= I   ' +�,�+�*�, *0 getcurrentposixpath getCurrentPosixPath�+  �*  > o   & '�)�) 0 utility  �.  �-  ; m   + ,?? �@@ @ s e a r c h _ c o n t e n t / h t m l C a c h e L o g . j s o n9 o      �(�( &0 htmlcachefilepath htmlCacheFilePath7 ABA l  2 2�'�&�%�'  �&  �%  B CDC r   2 ?EFE b   2 ;GHG l  2 7I�$�#I n  2 7JKJ I   3 7�"�!� �" *0 getcurrentposixpath getCurrentPosixPath�!  �   K o   2 3�� 0 utility  �$  �#  H m   7 :LL �MM  a u t h C o n f i g . j s o nF o      �� (0 authconfigfilepath authConfigFilePathD NON l  @ @����  �  �  O PQP l  @ @�RS�  R  
 cache map   S �TT    c a c h e   m a pQ UVU r   @ OWXW I  @ K�YZ� 0 jsontorecord JSONtoRecordY o   @ A�� 0 utility  Z �[�
� 
from[ o   D G�� &0 htmlcachefilepath htmlCacheFilePath�  X o      �� 0 htmlcachejson htmlCacheJsonV \]\ r   P _^_^ I  P [�`a� 0 jsontorecord JSONtoRecord` o   P Q�� 0 utility  a �b�
� 
fromb o   T W�� (0 authconfigfilepath authConfigFilePath�  _ o      ��  0 authconfigjson authConfigJson] cdc l  ` `����  �  �  d efe l  ` `�
gh�
  g ? 9 todo: json�� ��� �ְų� ������ Ʋ���� ���⼭ ������ ��.   h �ii L   t o d o :   j s o n�t  �DŴ  ǈ�p��  ����t  �����t  ��0�  �з�   �� .f jkj l  ` `�	lm�	  l   todo: 1763 error   m �nn "   t o d o :   1 7 6 3   e r r o rk opo r   ` lqrq n  ` hsts I   a h�u�� 0 onmutablecopy onMutableCopyu v�v o   a d�� 0 htmlcachejson htmlCacheJson�  �  t o   ` a�� 0 utility  r o      �� 0 htmlcachejson htmlCacheJsonp wxw r   m yyzy n  m u{|{ I   n u�}�� 0 onmutablecopy onMutableCopy} ~� ~ o   n q����  0 authconfigjson authConfigJson�   �  | o   m n���� 0 utility  z o      ����  0 authconfigjson authConfigJsonx � l  z z��������  ��  ��  � ��� r   z ���� m   z }�� ��� � f o n t - f a m i l y :   " T r e b u c h e t   M S " ,   " L u c i d a   S a n s   U n i c o d e " ,   " L u c i d a   G r a n d e " ,   " L u c i d a   S a n s " ,   A r i a l ,   s a n s - s e r i f ; '� o      ���� &0 metadatafontstyle metaDataFontStyle� ��� l  � ���������  ��  ��  � ��� O   � ���� I  � ������
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
�� .sysoexecTEXT���     TEXT� m   � ��� ��� > o p e n   / A p p l i c a t i o n s / E v e r n o t e . a p p��  � ��� l  � ���������  ��  ��  � ��� O   �~��� k   �}�� ��� r   � ���� l  � ������� I  � ������
�� .EVRNfindnull���     ctxt� m   � ��� ���  ��  ��  ��  � o      ���� 0 allnotes allNotes� ��� l  � ���������  ��  ��  � ��� Z   � �������� =  � ���� l  � ������� I  � ������
�� .corecnte****       ****� o   � ����� 0 allnotes allNotes��  ��  ��  � m   � �����  � L   � ��� m   � ��� ���   ��  ��  � ��� l  � ���������  ��  ��  � ��� I  � �����
�� .EVRNenxpnull���     ****� o   � ����� 0 allnotes allNotes� ����
�� 
kfil� l  � ������� o   � ����� &0 searchcontentpath searchContentPath��  ��  � �����
�� 
Expf� m   � ���
�� Exffexht��  � ��� l  � ���������  ��  ��  � ��� r   � ���� K   � ��� ������� 0 elem  � m   � ��� ���  m i s s i n g   v a l u e��  � o      ���� (0 notetitleindexdict noteTitleIndexDict� ��� l  � ���������  ��  ��  � ��� r   ���� n  �
��� I   �
������� 0 onmutablecopy onMutableCopy� ���� c   ���� o   ����� (0 notetitleindexdict noteTitleIndexDict� m  ��
�� 
reco��  ��  � o   � ����� 0 utility  � o      ���� (0 notetitleindexdict noteTitleIndexDict� ��� l ��������  ��  ��  � ��� r  ��� m  ���� � o      ���� 0 i  � ��� l ��������  ��  ��  � ��� r  ��� J  ����  � o      ���� 0 exceptionlist exceptionList� ��� l ��������  ��  ��  � ��� O  *��� I ")�����
�� .alfrSearnull��� ��� ctxt� m  "%�� ���   _ _ e n   >   s a v e c a c h e��  � m  ���                                                                                      @ alis    *  Macintosh HD                   BD ����Alfred 4.app                                                   ����            ����  
 cu             Applications  /:Applications:Alfred 4.app/    A l f r e d   4 . a p p    M a c i n t o s h   H D  Applications/Alfred 4.app   / ��  � ��� l ++��������  ��  ��  � ��� T  +@�� k  0;�� ��� l 00��������  ��  ��  � ��� r  0D��� c  0@��� l 0>������ n  0>   1  :>��
�� 
EVet l 0:���� n  0: 4  3:��
�� 
cobj o  69���� 0 i   o  03���� 0 allnotes allNotes��  ��  ��  ��  � m  >?��
�� 
TEXT� o      ���� 0 	notetitle 	noteTitle�  l EE��������  ��  ��   	 r  E\

 n EX I  FX������ 0 getnoteguid getNoteGuid �� n  FT 1  PT��
�� 
EV24 l FP���� n  FP 4  IP��
�� 
cobj o  LO���� 0 i   o  FI���� 0 allnotes allNotes��  ��  ��  ��   o  EF���� 0 utility   o      ���� 0 noteguid  	  l ]]��������  ��  ��    r  ]t n ]p I  ^p������ 0 gettimestring getTimeString �� n  ^l !  1  hl��
�� 
EVmm! l ^h"����" n  ^h#$# 4  ah��%
�� 
cobj% o  dg���� 0 i  $ o  ^a�� 0 allnotes allNotes��  ��  ��  ��   o  ]^�~�~ 0 utility   o      �}�} (0 lastestupdateddate lastestUpdatedDate &'& l uu�|�{�z�|  �{  �z  ' ()( r  u|*+* o  ux�y�y 0 	notetitle 	noteTitle+ o      �x�x  0 targetfilename targetFileName) ,-, l }}�w�v�u�w  �v  �u  - ./. l }}�t01�t  0 ) # Some special symbols are replaced.   1 �22 F   S o m e   s p e c i a l   s y m b o l s   a r e   r e p l a c e d ./ 343 r  }�565 n }�787 I  ~��s9�r�s ,0 findandreplaceintext findAndReplaceInText9 :;: o  ~��q�q  0 targetfilename targetFileName; <=< m  ��>> �??  ?= @�p@ m  ��AA �BB  _�p  �r  8 o  }~�o�o 0 utility  6 o      �n�n  0 targetfilename targetFileName4 CDC r  ��EFE n ��GHG I  ���mI�l�m ,0 findandreplaceintext findAndReplaceInTextI JKJ o  ���k�k  0 targetfilename targetFileNameK LML m  ��NN �OO  / /M P�jP m  ��QQ �RR  _�j  �l  H o  ���i�i 0 utility  F o      �h�h  0 targetfilename targetFileNameD STS r  ��UVU n ��WXW I  ���gY�f�g ,0 findandreplaceintext findAndReplaceInTextY Z[Z o  ���e�e  0 targetfilename targetFileName[ \]\ m  ��^^ �__  /] `�d` m  ��aa �bb  _�d  �f  X o  ���c�c 0 utility  V o      �b�b  0 targetfilename targetFileNameT cdc l ���a�`�_�a  �`  �_  d efe l ���^gh�^  g ' ! Colon should be processed with /   h �ii B   C o l o n   s h o u l d   b e   p r o c e s s e d   w i t h   /f jkj r  ��lml n ��non I  ���]p�\�] ,0 findandreplaceintext findAndReplaceInTextp qrq o  ���[�[  0 targetfilename targetFileNamer sts m  ��uu �vv  :t w�Zw m  ��xx �yy  /�Z  �\  o o  ���Y�Y 0 utility  m o      �X�X  0 targetfilename targetFileNamek z{z l ���W�V�U�W  �V  �U  { |}| r  ��~~ n ����� I  ���T��S�T 0 getvalue getValue� ��� o  ���R�R (0 notetitleindexdict noteTitleIndexDict� ��Q� b  ����� m  ���� ���  #� o  ���P�P 0 	notetitle 	noteTitle�Q  �S  � o  ���O�O 0 utility   o      �N�N 0 	fileindex 	fileIndex} ��� l ���M�L�K�M  �L  �K  � ��� l ���J���J  �   for debugging   � ���    f o r   d e b u g g i n g� ��� r  ����� o  ���I�I  0 targetfilename targetFileName� o      �H�H 0 filenameonly fileNameOnly� ��� l ���G�F�E�G  �F  �E  � ��� Z  �<���D�� = ����� c  ����� o  ���C�C 0 	fileindex 	fileIndex� m  ���B
�B 
TEXT� m  ���� ���  m i s s i n g   v a l u e� k  ��� ��� r  ����� b  ����� b  ����� o  ���A�A &0 searchcontentpath searchContentPath� o  ���@�@  0 targetfilename targetFileName� m  ���� ��� 
 . h t m l� o      �?�?  0 targetfilename targetFileName� ��>� n ���� I   �=��<�= 0 setvalue setValue� ��� o   �;�; (0 notetitleindexdict noteTitleIndexDict� ��� b  
��� m  �� ���  #� o  	�:�: 0 	notetitle 	noteTitle� ��9� m  
�8�8 �9  �<  � o  � �7�7 0 utility  �>  �D  � k  <�� ��� r  '��� b  #��� b  ��� b  ��� b  ��� o  �6�6 &0 searchcontentpath searchContentPath� o  �5�5  0 targetfilename targetFileName� m  �� ���  _� o  �4�4 0 	fileindex 	fileIndex� m  "�� ��� 
 . h t m l� o      �3�3  0 targetfilename targetFileName� ��2� n (<��� I  )<�1��0�1 0 setvalue setValue� ��� o  ),�/�/ (0 notetitleindexdict noteTitleIndexDict� ��� b  ,3��� m  ,/�� ���  #� o  /2�.�. 0 	notetitle 	noteTitle� ��-� [  38��� o  36�,�, 0 	fileindex 	fileIndex� m  67�+�+ �-  �0  � o  ()�*�* 0 utility  �2  � ��� l ==�)�(�'�)  �(  �'  � ��� Z  =���&�� = =G��� n =E��� I  >E�%��$�% 0 
fileexists 
FileExists� ��#� o  >A�"�"  0 targetfilename targetFileName�#  �$  �  f  =>� m  EF�!
�! boovtrue� k  J�� ��� O Je��� r  Pd��� b  PW��� o  PS� �  0 noteguid  � m  SV�� ��� 
 . h t m l� n      ��� 1  _c�
� 
pnam� 4  W_��
� 
file� o  [^��  0 targetfilename targetFileName� m  JM���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� n ft��� I  gt���� 0 setvalue setValue� ��� o  gj�� 0 htmlcachejson htmlCacheJson� ��� o  jm�� 0 noteguid  � ��� o  mp�� (0 lastestupdateddate lastestUpdatedDate�  �  � o  fg�� 0 utility  �    l uu����  �  �    l uu����  �  �    r  u� c  u�	 l u�
��
 n  u� 1  ��
� 
EVet l u�� n  u 4  x�

�
 
cobj o  {~�	�	 0 i   o  ux�� 0 allnotes allNotes�  �  �  �  	 m  ���
� 
TEXT o      �� $0 notetitleunicode noteTitleUnicode  r  �� c  �� l ���� n  �� 1  ���
� 
EVmm l ���� n  �� 4  ��� 
�  
cobj o  ������ 0 i   o  ������ 0 allnotes allNotes�  �  �  �   m  ����
�� 
TEXT o      ���� &0 lasteditedunicode lastEditedUnicode  r  �� !  c  ��"#" l ��$����$ n  ��%&% 1  ����
�� 
EVdd& l ��'����' n  ��()( 4  ����*
�� 
cobj* o  ������ 0 i  ) o  ������ 0 allnotes allNotes��  ��  ��  ��  # m  ����
�� 
TEXT! o      ����  0 createdunicode createdUnicode +,+ l ����������  ��  ��  , -.- r  ��/0/ b  ��121 b  ��343 b  ��565 b  ��787 b  ��9:9 b  ��;<; b  ��=>= b  ��?@? b  ��ABA b  ��CDC b  ��EFE b  ��GHG b  ��IJI m  ��KK �LL � < s t y l e > 
 i m g   { 
     m a x - w i d t h :   1 0 0 % ; 
     h e i g h t :   a u t o ; 
 } 
 < / s t y l e > 
 < p   i d = ' t i t l e '   s t y l e = ' f o n t - s i z e :   2 0 ;J o  ������ &0 metadatafontstyle metaDataFontStyleH m  ��MM �NN  > T i t l e :  F o  ������ 0 	notetitle 	noteTitleD m  ��OO �PP 
 < / p > 
B m  ��QQ �RR P < p   i d = ' e d i t e d D a t e '   s t y l e = ' f o n t - s i z e :   2 0 ;@ o  ������ &0 metadatafontstyle metaDataFontStyle> m  ��SS �TT " > L a s t   E d i t e d   I n :  < o  ������ &0 lasteditedunicode lastEditedUnicode: m  ��UU �VV ^ < / p > 
 < p   i d = ' c r e a t i o n D a t e '   s t y l e = ' f o n t - s i z e :   2 0 ;8 o  ������ &0 metadatafontstyle metaDataFontStyle6 m  ��WW �XX  > C r e a t e d   I n :  4 o  ������  0 createdunicode createdUnicode2 m  ��YY �ZZ P < / p > 
 < h r   s t y l e = ' m a r g i n - b o t t o m :   1 5 ; '   / >   
0 o      ���� "0 metadataofnotes metaDataOfNotes. [\[ n �	]^] I  �	��_���� 0 prependtext prependText_ `a` b  �bcb b  ��ded b  ��fgf n ��hih I  ���������� *0 getcurrentposixpath getCurrentPosixPath��  ��  i o  ������ 0 utility  g m  ��jj �kk  s e a r c h _ c o n t e n t /e o  ������ 0 noteguid  c m  �ll �mm 
 . h t m la n��n o  ���� "0 metadataofnotes metaDataOfNotes��  ��  ^  f  ��\ o��o l 

��������  ��  ��  ��  �&  � k  pp qrq l ��st��  s 6 0 Not caching successfully! (Need to be improved)   t �uu `   N o t   c a c h i n g   s u c c e s s f u l l y !   ( N e e d   t o   b e   i m p r o v e d )r v��v r  wxw b  yzy b  {|{ o  ���� 0 exceptionlist exceptionList| o  ���� 0 filenameonly fileNameOnlyz m  }} �~~  
x o      ���� 0 exceptionlist exceptionList��  � � l ��������  ��  ��  � ��� r  '��� [  #��� o  !���� 0 i  � m  !"���� � o      ���� 0 i  � ��� l ((��������  ��  ��  � ���� Z  (;������� l (3������ ?  (3��� o  (+���� 0 i  � l +2������ I +2�����
�� .corecnte****       ****� o  +.���� 0 allnotes allNotes��  ��  ��  ��  ��  �  S  67��  ��  ��  � ��� l AA��������  ��  ��  � ��� r  AM��� n AI��� I  BI������� 0 keysofrecord keysOfRecord� ���� o  BE���� 0 htmlcachejson htmlCacheJson��  ��  � o  AB���� 0 utility  � o      ���� 0 keystowrite keysToWrite� ��� r  NZ��� n NV��� I  OV�������  0 valuesofrecord valuesOfRecord� ���� o  OR���� 0 htmlcachejson htmlCacheJson��  ��  � o  NO���� 0 utility  � o      ���� 0 valuestowrite valuesToWrite� ��� l [[��������  ��  ��  � ��� r  [j��� n [f��� I  \f������� *0 makejsonwithnumbers makeJsonWithNumbers� ��� o  \_���� 0 keystowrite keysToWrite� ���� o  _b���� 0 valuestowrite valuesToWrite��  ��  � o  [\���� 0 utility  � o      ���� 0 jsoncontent jsonContent� ��� l kk��������  ��  ��  � ��� n k{��� I  l{������� "0 writetexttofile writeTextToFile� ��� o  lo���� 0 jsoncontent jsonContent� ��� b  ov��� l or������ c  or��� o  op���� 0 currentpath currentPath� m  pq��
�� 
TEXT��  ��  � m  ru�� ��� B : s e a r c h _ c o n t e n t : h t m l C a c h e L o g . j s o n� ���� m  vw��
�� boovtrue��  ��  �  f  kl� ���� l ||��������  ��  ��  ��  � 5   � ������
�� 
capp� m   � ��� ��� * c o m . e v e r n o t e . E v e r n o t e
�� kfrmID  � ��� l ��������  ��  ��  � ��� l ������  � - 'display dialog (count of exceptionList)   � ��� N d i s p l a y   d i a l o g   ( c o u n t   o f   e x c e p t i o n L i s t )� ��� l ������  �  exceptionList   � ���  e x c e p t i o n L i s t� ��� l ��������  ��  ��  � ��� O ���� I �������
�� .coredelonull���     obj � l �������� c  ����� l �������� 4  �����
�� 
psxf� l �������� b  ����� n ����� I  ���������� *0 getcurrentposixpath getCurrentPosixPath��  ��  � o  ������ 0 utility  � m  ���� ���  C a c h i n g��  ��  ��  ��  � m  ����
�� 
alis��  ��  ��  � m  ����                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� l ����~�}�  �~  �}  ��   m     �|�|  Q� ��� l ���{�z�y�{  �z  �y  � ��� n ����� I  ���x��w�x 0 setvalue setValue� ��� o  ���v�v  0 authconfigjson authConfigJson� ��� m  ���� ���  i n i t i a l C a c h i n g� ��u� m  ���t
�t boovtrue�u  �w  � o  ���s�s 0 utility  � ��� l ���r�q�p�r  �q  �p  � ��� r  ����� n ����� I  ���o��n�o 0 keysofrecord keysOfRecord� ��m� o  ���l�l  0 authconfigjson authConfigJson�m  �n  � o  ���k�k 0 utility  � o      �j�j 0 keystowrite keysToWrite� � � r  �� n �� I  ���i�h�i  0 valuesofrecord valuesOfRecord �g o  ���f�f  0 authconfigjson authConfigJson�g  �h   o  ���e�e 0 utility   o      �d�d 0 valuestowrite valuesToWrite   l ���c�b�a�c  �b  �a   	
	 r  �� n �� I  ���`�_�` *0 makejsonwithstrings makeJsonWithStrings  o  ���^�^ 0 keystowrite keysToWrite �] o  ���\�\ 0 valuestowrite valuesToWrite�]  �_   o  ���[�[ 0 utility   o      �Z�Z 0 jsoncontent jsonContent
  l ���Y�X�W�Y  �X  �W    n �� I  ���V�U�V "0 writetexttofile writeTextToFile  o  ���T�T 0 jsoncontent jsonContent  b  �� l �� �S�R  c  ��!"! o  ���Q�Q 0 currentpath currentPath" m  ���P
�P 
TEXT�S  �R   m  ��## �$$   : a u t h C o n f i g . j s o n %�O% m  ���N
�N boovtrue�O  �U    f  �� &'& l ���M�L�K�M  �L  �K  ' ()( L  ��** m  ��++ �,,   ) -�J- l ���I�H�G�I  �H  �G  �J  �W       �F./012�F  . �E�D�C�B�E "0 writetexttofile writeTextToFile�D 0 prependtext prependText�C 0 
fileexists 
FileExists
�B .aevtoappnull  �   � ****/ �A �@�?34�>�A "0 writetexttofile writeTextToFile�@ �=5�= 5  �<�;�:�< 0 thetext theText�; 0 thefile theFile�: 40 overwriteexistingcontent overwriteExistingContent�?  3 �9�8�7�6�9 0 thetext theText�8 0 thefile theFile�7 40 overwriteexistingcontent overwriteExistingContent�6 0 theopenedfile theOpenedFile4 �5�4�3�2�1�0�/�.�-�,�+�*�)�(
�5 
TEXT
�4 
file
�3 
perm
�2 .rdwropenshor       file
�1 
set2
�0 .rdwrseofnull���     ****
�/ 
refn
�. 
wrat
�- rdwreof �, 
�+ .rdwrwritnull���     ****
�* .rdwrclosnull���     ****�)  �(  �> \ >��&E�O*�/�el E�O�e  ��jl Y hO����� 
O�j OeOPW X   *�/j W X  hOf0 �' �&�%67�$�' 0 prependtext prependText�& �#8�# 8  �"�!�" (0 targetfilepathname targetFilePathname�!  0 thetexttowrite theTextToWrite�%  6 � ������  (0 targetfilepathname targetFilePathname�  0 thetexttowrite theTextToWrite� "0 theoriginaltext theOriginalText� "0 referencenumber referenceNumber� 0 estr eStr� 0 enum eNum7  ������ ���������9 �� ��� ��
�	��
� 
as  
� 
utf8
� .rdwrread****        ****�  �  
� 
perm
� .rdwropenshor       file
� 
refn
� 
wrat� 
� .rdwrwritnull���     ****
� .rdwrclosnull���     ****� 0 estr eStr9 ���
� 
errn� 0 enum eNum�  
� 
btns
� 
dflt
� 
appr
�
 
disp
�	 stic   � 
� .sysodlogaskr        TEXT�$ ��E�O ���l E�W X  hO��%�%E�O  ��el E�O�����j� O�j W AX  �a %�%a a kva ka a a a a  O 
�j W X  hOh1 � ���:;� � 0 
fileexists 
FileExists� ��<�� <  ���� 0 thefile theFile�  : ���� 0 thefile theFile;  �����
�� 
file
�� .coredoexnull���     ****�  � *�/j  eY fU2 �� �����=>��
�� .aevtoappnull  �   � ****�� 0 argv  ��  = ���� 0 argv  > ~��������������������-����?��L��������������������������������������������������������������������������������������������>A��NQ^aux�����������������������������KMOQSUWY��jl��}�������������������������#+��  Q�
�� 
rtyp
�� 
ctxt
�� .earsffdralis        afdr
�� 
psxp
�� .sysoloadscpt        file�� 0 utility  ��  0 getcurrentpath getCurrentPath
�� 
TEXT�� 0 currentpath currentPath�� &0 searchcontentpath searchContentPath�� *0 getcurrentposixpath getCurrentPosixPath�� &0 htmlcachefilepath htmlCacheFilePath�� (0 authconfigfilepath authConfigFilePath
�� 
from�� 0 jsontorecord JSONtoRecord�� 0 htmlcachejson htmlCacheJson��  0 authconfigjson authConfigJson�� 0 onmutablecopy onMutableCopy�� &0 metadatafontstyle metaDataFontStyle
�� 
kocl
�� 
cfol
�� 
insh
�� 
prdt
�� 
pnam�� 
�� .corecrel****      � null
�� .sysoexecTEXT���     TEXT
�� 
capp
�� kfrmID  
�� .EVRNfindnull���     ctxt�� 0 allnotes allNotes
�� .corecnte****       ****
�� 
kfil
�� 
Expf
�� Exffexht�� 
�� .EVRNenxpnull���     ****�� 0 elem  �� (0 notetitleindexdict noteTitleIndexDict
�� 
reco�� 0 i  �� 0 exceptionlist exceptionList
�� .alfrSearnull��� ��� ctxt
�� 
cobj
�� 
EVet�� 0 	notetitle 	noteTitle
�� 
EV24�� 0 getnoteguid getNoteGuid�� 0 noteguid  
�� 
EVmm�� 0 gettimestring getTimeString�� (0 lastestupdateddate lastestUpdatedDate��  0 targetfilename targetFileName�� ,0 findandreplaceintext findAndReplaceInText�� 0 getvalue getValue�� 0 	fileindex 	fileIndex�� 0 filenameonly fileNameOnly�� 0 setvalue setValue�� 0 
fileexists 
FileExists
�� 
file�� $0 notetitleunicode noteTitleUnicode�� &0 lasteditedunicode lastEditedUnicode
�� 
EVdd��  0 createdunicode createdUnicode�� "0 metadataofnotes metaDataOfNotes�� 0 prependtext prependText�� 0 keysofrecord keysOfRecord�� 0 keystowrite keysToWrite��  0 valuesofrecord valuesOfRecord�� 0 valuestowrite valuesToWrite�� *0 makejsonwithnumbers makeJsonWithNumbers�� 0 jsoncontent jsonContent�� "0 writetexttofile writeTextToFile
�� 
psxf
�� 
alis
�� .coredelonull���     obj �� *0 makejsonwithstrings makeJsonWithStrings����n)��l �%�,�%j E�O�j+ 	�&E�O��%E�O�j+ �%E` O�j+ a %E` O�a _ l E` O�a _ l E` O�_ k+ E` O�_ k+ E` Oa E` Oa  *a a a �a a a  la ! "UOa #j $O)a %a &a '0�a (j )E` *O_ *j +j  	a ,Y hO_ *a -�a .a /a 0 1Oa 2a 3lE` 4O�_ 4a 5&k+ E` 4OkE` 6OjvE` 7Oa 8 	a 9j :UOhZ_ *a ;_ 6/a <,�&E` =O�_ *a ;_ 6/a >,k+ ?E` @O�_ *a ;_ 6/a A,k+ BE` CO_ =E` DO�_ Da Ea Fm+ GE` DO�_ Da Ha Im+ GE` DO�_ Da Ja Km+ GE` DO�_ Da La Mm+ GE` DO�_ 4a N_ =%l+ OE` PO_ DE` QO_ P�&a R  #�_ D%a S%E` DO�_ 4a T_ =%km+ UY ,�_ D%a V%_ P%a W%E` DO�_ 4a X_ =%_ Pkm+ UO)_ Dk+ Ye  �a Z _ @a [%*a \_ D/a ,FUO�_ _ @_ Cm+ UO_ *a ;_ 6/a <,�&E` ]O_ *a ;_ 6/a A,�&E` ^O_ *a ;_ 6/a _,�&E` `Oa a_ %a b%_ =%a c%a d%_ %a e%_ ^%a f%_ %a g%_ `%a h%E` iO)�j+ a j%_ @%a k%_ il+ lOPY _ 7_ Q%a m%E` 7O_ 6kE` 6O_ 6_ *j + Y h[OY��O�_ k+ nE` oO�_ k+ pE` qO�_ o_ ql+ rE` sO)_ s��&a t%em+ uOPUOa  *a v�j+ a w%/a x&j yUOPoO�_ a zem+ UO�_ k+ nE` oO�_ k+ pE` qO�_ o_ ql+ {E` sO)_ s��&a |%em+ uOa }OP ascr  ��ޭ