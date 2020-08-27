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
�R .aevtoappnull  �   � **** � o      �P�P 0 argv  �Q   � k    � � �    l     �O�N�M�O  �N  �M    l     �L�L      very long time (24 hours)    � 4   v e r y   l o n g   t i m e   ( 2 4   h o u r s )  t    ,	
	 k   +  l   �K�J�I�K  �J  �I    r     I   �H�G
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
TEXT' o      �4�4 0 currentpath currentPath% ,-, l     �3�2�1�3  �2  �1  - ./. r     %010 b     #232 o     !�0�0 0 currentpath currentPath3 m   ! "44 �55   : s e a r c h _ c o n t e n t :1 o      �/�/ &0 searchcontentpath searchContentPath/ 676 l  & &�.�-�,�.  �-  �,  7 898 l  & &�+:;�+  : #  Cache json path	(posix path)   ; �<< :   C a c h e   j s o n   p a t h 	 ( p o s i x   p a t h )9 =>= r   & 1?@? b   & -ABA l  & +C�*�)C n  & +DED I   ' +�(�'�&�( *0 getcurrentposixpath getCurrentPosixPath�'  �&  E o   & '�%�% 0 utility  �*  �)  B m   + ,FF �GG @ s e a r c h _ c o n t e n t / h t m l C a c h e L o g . j s o n@ o      �$�$ &0 htmlcachefilepath htmlCacheFilePath> HIH l  2 2�#�"�!�#  �"  �!  I JKJ r   2 ?LML b   2 ;NON l  2 7P� �P n  2 7QRQ I   3 7���� *0 getcurrentposixpath getCurrentPosixPath�  �  R o   2 3�� 0 utility  �   �  O m   7 :SS �TT  a u t h C o n f i g . j s o nM o      �� (0 authconfigfilepath authConfigFilePathK UVU l  @ @����  �  �  V WXW r   @ MYZY b   @ I[\[ l  @ E]��] n  @ E^_^ I   A E���� *0 getcurrentposixpath getCurrentPosixPath�  �  _ o   @ A�� 0 utility  �  �  \ m   E H`` �aa B s e a r c h _ c o n t e n t / t h u m b N a i l P a t h . j s o nZ o      �� 60 thumbnailpathjsonfilepath thumbNailPathJsonFilePathX bcb l  N N����  �  �  c ded l  N N�fg�  f  
 cache map   g �hh    c a c h e   m a pe iji r   N ]klk I  N Y�mn� 0 jsontorecord JSONtoRecordm o   N O�
�
 0 utility  n �	o�
�	 
fromo o   R U�� &0 htmlcachefilepath htmlCacheFilePath�  l o      �� 0 htmlcachejson htmlCacheJsonj pqp r   ^ mrsr I  ^ i�tu� 0 jsontorecord JSONtoRecordt o   ^ _�� 0 utility  u �v�
� 
fromv o   b e�� (0 authconfigfilepath authConfigFilePath�  s o      � �   0 authconfigjson authConfigJsonq wxw r   n }yzy I  n y��{|�� 0 jsontorecord JSONtoRecord{ o   n o���� 0 utility  | ��}��
�� 
from} o   r u���� 60 thumbnailpathjsonfilepath thumbNailPathJsonFilePath��  z o      ���� &0 thumbnailpathjson thumbNailPathJsonx ~~ l  ~ ~��������  ��  ��   ��� l  ~ ~������  � ? 9 todo: json�� ��� �ְų� ������ Ʋ���� ���⼭ ������ ��.   � ��� L   t o d o :   j s o n�t  �DŴ  ǈ�p��  ����t  �����t  ��0�  �з�   �� .� ��� l  ~ ~������  �   todo: 1763 error   � ��� "   t o d o :   1 7 6 3   e r r o r� ��� r   ~ ���� n  ~ ���� I    �������� 0 onmutablecopy onMutableCopy� ���� o    ����� 0 htmlcachejson htmlCacheJson��  ��  � o   ~ ���� 0 utility  � o      ���� 0 htmlcachejson htmlCacheJson� ��� r   � ���� n  � ���� I   � �������� 0 onmutablecopy onMutableCopy� ���� o   � �����  0 authconfigjson authConfigJson��  ��  � o   � ����� 0 utility  � o      ����  0 authconfigjson authConfigJson� ��� r   � ���� n  � ���� I   � �������� 0 onmutablecopy onMutableCopy� ���� o   � ����� &0 thumbnailpathjson thumbNailPathJson��  ��  � o   � ����� 0 utility  � o      ���� &0 thumbnailpathjson thumbNailPathJson� ��� l  � ���������  ��  ��  � ��� r   � ���� m   � ��� ��� � f o n t - f a m i l y :   " T r e b u c h e t   M S " ,   " L u c i d a   S a n s   U n i c o d e " ,   " L u c i d a   G r a n d e " ,   " L u c i d a   S a n s " ,   A r i a l ,   s a n s - s e r i f ; '� o      ���� &0 metadatafontstyle metaDataFontStyle� ��� l  � ���������  ��  ��  � ��� O   � ���� I  � ������
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
�� .sysoexecTEXT���     TEXT� m   � ��� ��� > o p e n   / A p p l i c a t i o n s / E v e r n o t e . a p p��  � ��� l  � ���������  ��  ��  � ��� O   ���� k   �
�� ��� r   � ���� l  � ������� I  � ������
�� .EVRNfindnull���     ctxt� m   � ��� ���  ��  ��  ��  � o      ���� 0 allnotes allNotes� ��� l  � ���������  ��  ��  � ��� Z   �������� =  � ���� l  � ������� I  � ������
�� .corecnte****       ****� o   � ����� 0 allnotes allNotes��  ��  ��  � m   � �����  � L   ��� m   ��� ���   ��  ��  � ��� l ��������  ��  ��  � ��� I ����
�� .EVRNenxpnull���     ****� o  ���� 0 allnotes allNotes� ����
�� 
kfil� l ������ o  ���� &0 searchcontentpath searchContentPath��  ��  � �����
�� 
Expf� m  ��
�� Exffexht��  � ��� l ��������  ��  ��  � ��� r  (��� K  $�� ������� 0 elem  � m  "�� ���  m i s s i n g   v a l u e��  � o      ���� (0 notetitleindexdict noteTitleIndexDict� ��� l ))��������  ��  ��  � ��� r  )9��� n )5��� I  *5������� 0 onmutablecopy onMutableCopy� ���� c  *1��� o  *-���� (0 notetitleindexdict noteTitleIndexDict� m  -0��
�� 
reco��  ��  � o  )*���� 0 utility  � o      ���� (0 notetitleindexdict noteTitleIndexDict� ��� l ::��������  ��  ��  �    r  :? m  :;����  o      ���� 0 i    l @@��������  ��  ��    r  @F	 J  @B����  	 o      ���� 0 exceptionlist exceptionList 

 l GG��������  ��  ��    O  GU I MT����
�� .alfrSearnull��� ��� ctxt m  MP �   _ _ e n   >   s a v e c a c h e��   m  GJ�                                                                                      @ alis    *  Macintosh HD                   BD ����Alfred 4.app                                                   ����            ����  
 cu             Applications  /:Applications:Alfred 4.app/    A l f r e d   4 . a p p    M a c i n t o s h   H D  Applications/Alfred 4.app   / ��    l VV��������  ��  ��    T  V� k  [�  l [[��������  ��  ��    r  [o c  [k !  l [i"����" n  [i#$# 1  ei��
�� 
EVet$ l [e%����% n  [e&'& 4  ^e��(
�� 
cobj( o  ad���� 0 i  ' o  [^���� 0 allnotes allNotes��  ��  ��  ��  ! m  ij��
�� 
TEXT o      �� 0 	notetitle 	noteTitle )*) l pp�~�}�|�~  �}  �|  * +,+ r  p�-.- n p�/0/ I  q��{1�z�{ 0 getnoteguid getNoteGuid1 2�y2 n  q343 1  {�x
�x 
EV244 l q{5�w�v5 n  q{676 4  t{�u8
�u 
cobj8 o  wz�t�t 0 i  7 o  qt�s�s 0 allnotes allNotes�w  �v  �y  �z  0 o  pq�r�r 0 utility  . o      �q�q 0 noteguid  , 9:9 l ���p�o�n�p  �o  �n  : ;<; r  ��=>= n ��?@? I  ���mA�l�m 0 gettimestring getTimeStringA B�kB n  ��CDC 1  ���j
�j 
EVmmD l ��E�i�hE n  ��FGF 4  ���gH
�g 
cobjH o  ���f�f 0 i  G o  ���e�e 0 allnotes allNotes�i  �h  �k  �l  @ o  ���d�d 0 utility  > o      �c�c (0 lastestupdateddate lastestUpdatedDate< IJI l ���b�a�`�b  �a  �`  J KLK r  ��MNM o  ���_�_ 0 	notetitle 	noteTitleN o      �^�^  0 targetfilename targetFileNameL OPO l ���]�\�[�]  �\  �[  P QRQ l ���ZST�Z  S ) # Some special symbols are replaced.   T �UU F   S o m e   s p e c i a l   s y m b o l s   a r e   r e p l a c e d .R VWV r  ��XYX n ��Z[Z I  ���Y\�X�Y ,0 findandreplaceintext findAndReplaceInText\ ]^] o  ���W�W  0 targetfilename targetFileName^ _`_ m  ��aa �bb  ?` c�Vc m  ��dd �ee  _�V  �X  [ o  ���U�U 0 utility  Y o      �T�T  0 targetfilename targetFileNameW fgf r  ��hih n ��jkj I  ���Sl�R�S ,0 findandreplaceintext findAndReplaceInTextl mnm o  ���Q�Q  0 targetfilename targetFileNamen opo m  ��qq �rr  / /p s�Ps m  ��tt �uu  _�P  �R  k o  ���O�O 0 utility  i o      �N�N  0 targetfilename targetFileNameg vwv r  ��xyx n ��z{z I  ���M|�L�M ,0 findandreplaceintext findAndReplaceInText| }~} o  ���K�K  0 targetfilename targetFileName~ � m  ���� ���  /� ��J� m  ���� ���  _�J  �L  { o  ���I�I 0 utility  y o      �H�H  0 targetfilename targetFileNamew ��� l ���G�F�E�G  �F  �E  � ��� l ���D���D  � ' ! Colon should be processed with /   � ��� B   C o l o n   s h o u l d   b e   p r o c e s s e d   w i t h   /� ��� r  ����� n ����� I  ���C��B�C ,0 findandreplaceintext findAndReplaceInText� ��� o  ���A�A  0 targetfilename targetFileName� ��� m  ���� ���  :� ��@� m  ���� ���  /�@  �B  � o  ���?�? 0 utility  � o      �>�>  0 targetfilename targetFileName� ��� l ���=�<�;�=  �<  �;  � ��� r  ���� n ���� I  ��:��9�: 0 getvalue getValue� ��� o  ���8�8 (0 notetitleindexdict noteTitleIndexDict� ��7� b  ����� m  ���� ���  #� o  ���6�6 0 	notetitle 	noteTitle�7  �9  � o  ���5�5 0 utility  � o      �4�4 0 	fileindex 	fileIndex� ��� l �3�2�1�3  �2  �1  � ��� l �0���0  �   for debugging   � ���    f o r   d e b u g g i n g� ��� r  ��� o  �/�/  0 targetfilename targetFileName� o      �.�. 0 filenameonly fileNameOnly� ��� l �-�,�+�-  �,  �+  � ��� Z  C���*�� = ��� c  ��� o  �)�) 0 	fileindex 	fileIndex� m  �(
�( 
TEXT� m  �� ���  m i s s i n g   v a l u e� r  )��� b  %��� b  !��� o  �'�' &0 searchcontentpath searchContentPath� o   �&�&  0 targetfilename targetFileName� m  !$�� ��� 
 . h t m l� o      �%�%  0 targetfilename targetFileName�*  � k  ,C�� ��� r  ,A��� b  ,=��� b  ,9��� b  ,5��� b  ,1��� o  ,-�$�$ &0 searchcontentpath searchContentPath� o  -0�#�#  0 targetfilename targetFileName� m  14�� ���  _� o  58�"�" 0 	fileindex 	fileIndex� m  9<�� ��� 
 . h t m l� o      �!�!  0 targetfilename targetFileName� �� � l BB����  �  �  �   � ��� l DD����  �  �  � ��� l DD����  �   get thumbNailFile Path   � ��� .   g e t   t h u m b N a i l F i l e   P a t h� ��� Z  D������ = DN��� n DL��� I  EL���� 0 
fileexists 
FileExists� ��� o  EH��  0 targetfilename targetFileName�  �  �  f  DE� m  LM�
� boovtrue� k  Q��� ��� O Ql��� r  Wk��� b  W^��� o  WZ�� 0 noteguid  � m  Z]�� ��� 
 . h t m l� n      ��� 1  fj�
� 
pnam� 4  ^f��
� 
file� o  be��  0 targetfilename targetFileName� m  QT���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �    n m{ I  n{��� 0 setvalue setValue  o  nq�� 0 htmlcachejson htmlCacheJson  o  qt�� 0 noteguid   	�
	 o  tw�	�	 (0 lastestupdateddate lastestUpdatedDate�
  �   o  mn�� 0 utility   

 l ||����  �  �    r  |� m  |}��  o      �� 0 j    l ����� �  �  �     r  �� m  ����
�� boovfals o      ���� &0 hasresourcefolder hasResourceFolder  l ����������  ��  ��    O  � k  �   l ����������  ��  ��     r  ��!"! b  ��#$# o  ������  0 targetfilename targetFileName$ m  ��%% �&&  . r e s o u r c e s" o      ���� (0 resourcefoldername resourceFolderName  '(' l ����������  ��  ��  ( )*) l ����+,��  + "  ���ҽ� ������ �����ϴ� ���   , �--    ����¤  ���T�   �tǬ�X��  ��ư* ./. l ����������  ��  ��  / 010 r  ��232 n  ��454 1  ����
�� 
psxp5 o  ������ (0 resourcefoldername resourceFolderName3 o      ���� 20 resourcefolderpoxispath resourceFolderPoxisPath1 676 l ����������  ��  ��  7 898 Q  ��:;<: k  ��== >?> r  ��@A@ I ����B��
�� .sysoexecTEXT���     TEXTB b  ��CDC b  ��EFE m  ��GG �HH  f i n d   "F o  ������ 20 resourcefolderpoxispath resourceFolderPoxisPathD m  ��II �JJ z "   - i n a m e   " * . j p g "   - o   - i n a m e   " * . p n g "   - o   - i n a m e   " * . j p e g "   |   w c   - l��  A o      ���� 0 itemcnt itemCnt? KLK l ����������  ��  ��  L MNM Z  ��OP����O > ��QRQ c  ��STS o  ������ 0 itemcnt itemCntT m  ����
�� 
nmbrR m  ������  P k  ��UU VWV r  ��XYX m  ����
�� boovtrueY o      ���� &0 hasresourcefolder hasResourceFolderW Z[Z l ����������  ��  ��  [ \]\ r  ��^_^ I ����`��
�� .sysoexecTEXT���     TEXT` b  ��aba b  ��cdc m  ��ee �ff  ( f i n d   "d o  ������ 20 resourcefolderpoxispath resourceFolderPoxisPathb m  ��gg �hh � "   - i n a m e   " * . j p g "   - o   - i n a m e   " * . p n g "   - o   - i n a m e   " * . j p e g " )   |   h e a d   - n   1��  _ o      ���� &0 thumbnailfilepath thumbNailFilePath] iji l ����������  ��  ��  j k��k n ��lml I  ����n���� 0 setvalue setValuen opo o  ������ &0 thumbnailpathjson thumbNailPathJsonp qrq o  ������ 0 noteguid  r s��s o  ������ &0 thumbnailfilepath thumbNailFilePath��  ��  m o  ������ 0 utility  ��  ��  ��  N tut l ����������  ��  ��  u v��v l ����������  ��  ��  ��  ; R      ������
�� .ascrerr ****      � ****��  ��  < k  ��ww xyx l ����������  ��  ��  y z{z l ����|}��  | , &display dialog resourceFolderPoxisPath   } �~~ L d i s p l a y   d i a l o g   r e s o u r c e F o l d e r P o x i s P a t h{ �� l ����������  ��  ��  ��  9 ���� l ����������  ��  ��  ��   m  �����                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   ��� l ��������  ��  ��  � ��� r  ��� c  ��� l ������ n  ��� 1  ��
�� 
EVet� l ������ n  ��� 4  ���
�� 
cobj� o  ���� 0 i  � o  ���� 0 allnotes allNotes��  ��  ��  ��  � m  ��
�� 
TEXT� o      ���� $0 notetitleunicode noteTitleUnicode� ��� r  +��� c  '��� l %������ n  %��� 1  !%��
�� 
EVmm� l !������ n  !��� 4  !���
�� 
cobj� o   ���� 0 i  � o  ���� 0 allnotes allNotes��  ��  ��  ��  � m  %&��
�� 
TEXT� o      ���� &0 lasteditedunicode lastEditedUnicode� ��� r  ,@��� c  ,<��� l ,:������ n  ,:��� 1  6:��
�� 
EVdd� l ,6������ n  ,6��� 4  /6���
�� 
cobj� o  25���� 0 i  � o  ,/���� 0 allnotes allNotes��  ��  ��  ��  � m  :;��
�� 
TEXT� o      ����  0 createdunicode createdUnicode� ��� l AA��������  ��  ��  � ��� r  A|��� b  Ax��� b  At��� b  Ap��� b  Al��� b  Ah��� b  Ad��� b  A`��� b  A\��� b  AX��� b  AT��� b  AP��� b  AL��� b  AH��� m  AD�� ��� � < s t y l e > 
 i m g   { 
     m a x - w i d t h :   1 0 0 % ; 
     h e i g h t :   a u t o ; 
 } 
 < / s t y l e > 
 < p   i d = ' t i t l e '   s t y l e = ' f o n t - s i z e :   2 0 ;� o  DG���� &0 metadatafontstyle metaDataFontStyle� m  HK�� ���  > T i t l e :  � o  LO���� 0 	notetitle 	noteTitle� m  PS�� ��� 
 < / p > 
� m  TW�� ��� P < p   i d = ' e d i t e d D a t e '   s t y l e = ' f o n t - s i z e :   2 0 ;� o  X[���� &0 metadatafontstyle metaDataFontStyle� m  \_�� ��� " > L a s t   E d i t e d   I n :  � o  `c���� &0 lasteditedunicode lastEditedUnicode� m  dg�� ��� ^ < / p > 
 < p   i d = ' c r e a t i o n D a t e '   s t y l e = ' f o n t - s i z e :   2 0 ;� o  hk���� &0 metadatafontstyle metaDataFontStyle� m  lo�� ���  > C r e a t e d   I n :  � o  ps����  0 createdunicode createdUnicode� m  tw�� ��� P < / p > 
 < h r   s t y l e = ' m a r g i n - b o t t o m :   1 5 ; '   / >   
� o      ���� "0 metadataofnotes metaDataOfNotes� ��� n }���� I  ~�������� 0 prependtext prependText� ��� b  ~���� b  ~���� b  ~���� n ~���� I  ��������� *0 getcurrentposixpath getCurrentPosixPath��  ��  � o  ~���� 0 utility  � m  ���� ���  s e a r c h _ c o n t e n t /� o  ������ 0 noteguid  � m  ���� ��� 
 . h t m l� ���� o  ���� "0 metadataofnotes metaDataOfNotes��  ��  �  f  }~� ��~� l ���}�|�{�}  �|  �{  �~  �  � k  ���� ��� l ���z���z  � 6 0 Not caching successfully! (Need to be improved)   � ��� `   N o t   c a c h i n g   s u c c e s s f u l l y !   ( N e e d   t o   b e   i m p r o v e d )� ��y� r  ����� b  ����� b  ����� o  ���x�x 0 exceptionlist exceptionList� o  ���w�w 0 filenameonly fileNameOnly� m  ���� ���  
� o      �v�v 0 exceptionlist exceptionList�y  � � � l ���u�t�s�u  �t  �s     r  �� [  �� o  ���r�r 0 i   m  ���q�q  o      �p�p 0 i    l ���o�n�m�o  �n  �m   	�l	 Z  ��
�k�j
 l ���i�h ?  �� o  ���g�g 0 i   l ���f�e I ���d�c
�d .corecnte****       **** o  ���b�b 0 allnotes allNotes�c  �f  �e  �i  �h    S  ���k  �j  �l    l ���a�`�_�a  �`  �_    r  �� n �� I  ���^�]�^ 0 keysofrecord keysOfRecord �\ o  ���[�[ 0 htmlcachejson htmlCacheJson�\  �]   o  ���Z�Z 0 utility   o      �Y�Y 0 keystowrite keysToWrite  r  �� n ��  I  ���X!�W�X  0 valuesofrecord valuesOfRecord! "�V" o  ���U�U 0 htmlcachejson htmlCacheJson�V  �W    o  ���T�T 0 utility   o      �S�S 0 valuestowrite valuesToWrite #$# l ���R�Q�P�R  �Q  �P  $ %&% r  ��'(' n ��)*) I  ���O+�N�O *0 makejsonwithnumbers makeJsonWithNumbers+ ,-, o  ���M�M 0 keystowrite keysToWrite- .�L. o  ���K�K 0 valuestowrite valuesToWrite�L  �N  * o  ���J�J 0 utility  ( o      �I�I 0 jsoncontent jsonContent& /0/ l ���H�G�F�H  �G  �F  0 121 n �343 I  ��E5�D�E "0 writetexttofile writeTextToFile5 676 o  ���C�C 0 jsoncontent jsonContent7 898 b  �:;: l ��<�B�A< c  ��=>= o  ���@�@ 0 currentpath currentPath> m  ���?
�? 
TEXT�B  �A  ; m  �?? �@@ B : s e a r c h _ c o n t e n t : h t m l C a c h e L o g . j s o n9 A�>A m  �=
�= boovtrue�>  �D  4  f  ��2 B�<B l 		�;�:�9�;  �:  �9  �<  � 5   � ��8C�7
�8 
cappC m   � �DD �EE * c o m . e v e r n o t e . E v e r n o t e
�7 kfrmID  � FGF l �6�5�4�6  �5  �4  G HIH l �3JK�3  J - 'display dialog (count of exceptionList)   K �LL N d i s p l a y   d i a l o g   ( c o u n t   o f   e x c e p t i o n L i s t )I MNM l �2OP�2  O  exceptionList   P �QQ  e x c e p t i o n L i s tN RSR l �1�0�/�1  �0  �/  S TUT O )VWV I (�.X�-
�. .coredelonull���     obj X l $Y�,�+Y c  $Z[Z l  \�*�)\ 4   �(]
�( 
psxf] l ^�'�&^ b  _`_ n aba I  �%�$�#�% *0 getcurrentposixpath getCurrentPosixPath�$  �#  b o  �"�" 0 utility  ` m  cc �dd  C a c h i n g�'  �&  �*  �)  [ m   #�!
�! 
alis�,  �+  �-  W m  ee�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  U f� f l **����  �  �  �   
 m     ��  Q� ghg l --����  �  �  h iji n -9klk I  .9�m�� 0 setvalue setValuem non o  .1��  0 authconfigjson authConfigJsono pqp m  14rr �ss  i n i t i a l C a c h i n gq t�t m  45�
� boovtrue�  �  l o  -.�� 0 utility  j uvu l ::����  �  �  v wxw l ::�yz�  y   write authConfig.json   z �{{ ,   w r i t e   a u t h C o n f i g . j s o nx |}| r  :F~~ n :B��� I  ;B���� 0 keysofrecord keysOfRecord� ��� o  ;>��  0 authconfigjson authConfigJson�  �  � o  :;�
�
 0 utility   o      �	�	 0 keystowrite keysToWrite} ��� r  GS��� n GO��� I  HO����  0 valuesofrecord valuesOfRecord� ��� o  HK��  0 authconfigjson authConfigJson�  �  � o  GH�� 0 utility  � o      �� 0 valuestowrite valuesToWrite� ��� l TT��� �  �  �   � ��� r  Tc��� n T_��� I  U_������� *0 makejsonwithstrings makeJsonWithStrings� ��� o  UX���� 0 keystowrite keysToWrite� ���� o  X[���� 0 valuestowrite valuesToWrite��  ��  � o  TU���� 0 utility  � o      ���� 0 jsoncontent jsonContent� ��� l dd��������  ��  ��  � ��� n dt��� I  et������� "0 writetexttofile writeTextToFile� ��� o  eh���� 0 jsoncontent jsonContent� ��� b  ho��� l hk������ c  hk��� o  hi���� 0 currentpath currentPath� m  ij��
�� 
TEXT��  ��  � m  kn�� ���   : a u t h C o n f i g . j s o n� ���� m  op��
�� boovtrue��  ��  �  f  de� ��� l uu��������  ��  ��  � ��� l uu��������  ��  ��  � ��� l uu������  �   write thumbNailPath.json   � ��� 2   w r i t e   t h u m b N a i l P a t h . j s o n� ��� r  u���� n u}��� I  v}������� 0 keysofrecord keysOfRecord� ���� o  vy���� &0 thumbnailpathjson thumbNailPathJson��  ��  � o  uv���� 0 utility  � o      ���� 0 keystowrite keysToWrite� ��� r  ����� n ����� I  ���������  0 valuesofrecord valuesOfRecord� ���� o  ������ &0 thumbnailpathjson thumbNailPathJson��  ��  � o  ������ 0 utility  � o      ���� 0 valuestowrite valuesToWrite� ��� l ����������  ��  ��  � ��� r  ����� n ����� I  ��������� *0 makejsonwithstrings makeJsonWithStrings� ��� o  ������ 0 keystowrite keysToWrite� ���� o  ������ 0 valuestowrite valuesToWrite��  ��  � o  ������ 0 utility  � o      ���� 0 jsoncontent jsonContent� ��� l ����������  ��  ��  � ��� n ����� I  ��������� "0 writetexttofile writeTextToFile� ��� o  ������ 0 jsoncontent jsonContent� ��� b  ����� l �������� c  ����� o  ������ 0 currentpath currentPath� m  ����
�� 
TEXT��  ��  � m  ���� ��� D : s e a r c h _ c o n t e n t : t h u m b N a i l P a t h . j s o n� ���� m  ����
�� boovtrue��  ��  �  f  ��� ��� l ����������  ��  ��  � ��� L  ���� m  ���� ���   � ���� l ����������  ��  ��  ��  �S       ���������  � ���������� "0 writetexttofile writeTextToFile�� 0 prependtext prependText�� 0 
fileexists 
FileExists
�� .aevtoappnull  �   � ****� �� ���������� "0 writetexttofile writeTextToFile�� ����� �  �������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent��  � ���������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent�� 0 theopenedfile theOpenedFile� �������������������������������� k��
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
�� .rdwrclosnull���     ****��  ��  
�� .sysodlogaskr        TEXT�� f @��&E�O*�/�el E�O�e  ��jl Y hO������� O�j OeOPW &X  a j O *�/j W X  hOf� �� ����������� 0 prependtext prependText�� ����� �  ������ (0 targetfilepathname targetFilePathname��  0 thetexttowrite theTextToWrite��  � �������������� (0 targetfilepathname targetFilePathname��  0 thetexttowrite theTextToWrite�� "0 theoriginaltext theOriginalText�� "0 referencenumber referenceNumber�� 0 estr eStr�� 0 enum eNum�  ����������� ������������������ ��� ���~ ��}�|�{�z
�� 
as  
�� 
utf8
�� .rdwrread****        ****��  ��  
�� 
perm
�� .rdwropenshor       file
�� 
refn
�� 
wrat�� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� 0 estr eStr� �y�x�w
�y 
errn�x 0 enum eNum�w  
�� 
btns
� 
dflt
�~ 
appr
�} 
disp
�| stic   �{ 
�z .sysodlogaskr        TEXT�� ��E�O ���l E�W X  hO��%�%E�O  ��el E�O�����j� O�j W AX  �a %�%a a kva ka a a a a  O 
�j W X  hOh� �v ��u�t���s�v 0 
fileexists 
FileExists�u �r��r �  �q�q 0 thefile theFile�t  � �p�p 0 thefile theFile�  ��o�n
�o 
file
�n .coredoexnull���     ****�s � *�/j  eY fU� �m ��l�k���j
�m .aevtoappnull  �   � ****�l 0 argv  �k  � �i�i 0 argv  � ��h�g�f�e�d �c�b�a�`�_4�^�]F�\S�[`�Z�Y�X�W�V�U�T��S��R�Q�P�O�N��M�L��K�JD�I��H�G�F��E�D�C�B�A�@��?�>�=�<�;�:�9�8�7�6�5�4�3�2�1ad�0qt������/�.�-�����,���+�*�)�(%�'�&GI�%�$eg�#�"�!� ����������������������?��c��r�����h  Q�
�g 
rtyp
�f 
ctxt
�e .earsffdralis        afdr
�d 
psxp
�c .sysoloadscpt        file�b 0 utility  �a  0 getcurrentpath getCurrentPath
�` 
TEXT�_ 0 currentpath currentPath�^ &0 searchcontentpath searchContentPath�] *0 getcurrentposixpath getCurrentPosixPath�\ &0 htmlcachefilepath htmlCacheFilePath�[ (0 authconfigfilepath authConfigFilePath�Z 60 thumbnailpathjsonfilepath thumbNailPathJsonFilePath
�Y 
from�X 0 jsontorecord JSONtoRecord�W 0 htmlcachejson htmlCacheJson�V  0 authconfigjson authConfigJson�U &0 thumbnailpathjson thumbNailPathJson�T 0 onmutablecopy onMutableCopy�S &0 metadatafontstyle metaDataFontStyle
�R 
kocl
�Q 
cfol
�P 
insh
�O 
prdt
�N 
pnam�M 
�L .corecrel****      � null
�K .sysoexecTEXT���     TEXT
�J 
capp
�I kfrmID  
�H .EVRNfindnull���     ctxt�G 0 allnotes allNotes
�F .corecnte****       ****
�E 
kfil
�D 
Expf
�C Exffexht�B 
�A .EVRNenxpnull���     ****�@ 0 elem  �? (0 notetitleindexdict noteTitleIndexDict
�> 
reco�= 0 i  �< 0 exceptionlist exceptionList
�; .alfrSearnull��� ��� ctxt
�: 
cobj
�9 
EVet�8 0 	notetitle 	noteTitle
�7 
EV24�6 0 getnoteguid getNoteGuid�5 0 noteguid  
�4 
EVmm�3 0 gettimestring getTimeString�2 (0 lastestupdateddate lastestUpdatedDate�1  0 targetfilename targetFileName�0 ,0 findandreplaceintext findAndReplaceInText�/ 0 getvalue getValue�. 0 	fileindex 	fileIndex�- 0 filenameonly fileNameOnly�, 0 
fileexists 
FileExists
�+ 
file�* 0 setvalue setValue�) 0 j  �( &0 hasresourcefolder hasResourceFolder�' (0 resourcefoldername resourceFolderName�& 20 resourcefolderpoxispath resourceFolderPoxisPath�% 0 itemcnt itemCnt
�$ 
nmbr�# &0 thumbnailfilepath thumbNailFilePath�"  �!  �  $0 notetitleunicode noteTitleUnicode� &0 lasteditedunicode lastEditedUnicode
� 
EVdd�  0 createdunicode createdUnicode� "0 metadataofnotes metaDataOfNotes� 0 prependtext prependText� 0 keysofrecord keysOfRecord� 0 keystowrite keysToWrite�  0 valuesofrecord valuesOfRecord� 0 valuestowrite valuesToWrite� *0 makejsonwithnumbers makeJsonWithNumbers� 0 jsoncontent jsonContent� "0 writetexttofile writeTextToFile
� 
psxf
� 
alis
� .coredelonull���     obj � *0 makejsonwithstrings makeJsonWithStrings�j��n)��l �%�,�%j E�O�j+ 	�&E�O��%E�O�j+ �%E` O�j+ a %E` O�j+ a %E` O�a _ l E` O�a _ l E` O�a _ l E` O�_ k+ E` O�_ k+ E` O�_ k+ E` Oa E` Oa  *a a a  �a !a "a #la $ %UOa &j 'O)a (a )a *0%a +j ,E` -O_ -j .j  	a /Y hO_ -a 0�a 1a 2a 3 4Oa 5a 6lE` 7O�_ 7a 8&k+ E` 7OkE` 9OjvE` :Oa ; 	a <j =UOvhZ_ -a >_ 9/a ?,�&E` @O�_ -a >_ 9/a A,k+ BE` CO�_ -a >_ 9/a D,k+ EE` FO_ @E` GO�_ Ga Ha Im+ JE` GO�_ Ga Ka Lm+ JE` GO�_ Ga Ma Nm+ JE` GO�_ Ga Oa Pm+ JE` GO�_ 7a Q_ @%l+ RE` SO_ GE` TO_ S�&a U  �_ G%a V%E` GY �_ G%a W%_ S%a X%E` GOPO)_ Gk+ Ye La Z _ Ca [%*a \_ G/a ",FUO�_ _ C_ Fm+ ]OkE` ^OfE` _Oa  t_ Ga `%E` aO_ a�,E` bO Sa c_ b%a d%j 'E` eO_ ea f&j -eE` _Oa g_ b%a h%j 'E` iO�_ _ C_ im+ ]Y hOPW X j khOPUO_ -a >_ 9/a ?,�&E` lO_ -a >_ 9/a D,�&E` mO_ -a >_ 9/a n,�&E` oOa p_ %a q%_ @%a r%a s%_ %a t%_ m%a u%_ %a v%_ o%a w%E` xO)�j+ a y%_ C%a z%_ xl+ {OPY _ :_ T%a |%E` :O_ 9kE` 9O_ 9_ -j . Y h[OY��O�_ k+ }E` ~O�_ k+ E` �O�_ ~_ �l+ �E` �O)_ ���&a �%em+ �OPUOa  *a ��j+ a �%/a �&j �UOPoO�_ a �em+ ]O�_ k+ }E` ~O�_ k+ E` �O�_ ~_ �l+ �E` �O)_ ���&a �%em+ �O�_ k+ }E` ~O�_ k+ E` �O�_ ~_ �l+ �E` �O)_ ���&a �%em+ �Oa �OPascr  ��ޭ