FasdUAS 1.101.10   ��   ��    k             j     �� �� 0 pver pVer  m        � 	 	  0 . 7   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    ? 9 CONVERT FROM TASKPAPER DATE TIME STRINGS TO APPLESCRIPT,     �   r   C O N V E R T   F R O M   T A S K P A P E R   D A T E   T I M E   S T R I N G S   T O   A P P L E S C R I P T ,      l     ����  r         m     ��
�� boovtrue  o      ���� 0 blntime blnTime��  ��        l    ����  r        I    �� ���� 0 as2tpdatetime AS2TPDateTime      I   
������
�� .misccurdldt    ��� null��  ��      ��   o   
 ���� 0 blntime blnTime��  ��    o      ���� $0 strtaskpaperdate strTaskPaperDate��  ��     ! " ! l     ��������  ��  ��   "  # $ # l     ��������  ��  ��   $  % & % l     �� ' (��   ' R L AND CONVERT BACK FROM AN APPLESCRIPT DATE TO A TASKPAPER DATE (TIME) STRING    ( � ) ) �   A N D   C O N V E R T   B A C K   F R O M   A N   A P P L E S C R I P T   D A T E   T O   A   T A S K P A P E R   D A T E   ( T I M E )   S T R I N G &  * + * l    ,���� , r     - . - I    �� /���� 0 tp2asdatetime TP2ASDateTime /  0�� 0 o    ���� $0 strtaskpaperdate strTaskPaperDate��  ��   . o      ���� 0 dtenow dteNow��  ��   +  1 2 1 l     ��������  ��  ��   2  3 4 3 l    5���� 5 J     6 6  7 8 7 o    ���� 0 dtenow dteNow 8  9�� 9 o    ���� $0 strtaskpaperdate strTaskPaperDate��  ��  ��   4  : ; : l     ��������  ��  ��   ;  < = < l     ��������  ��  ��   =  > ? > l     �� @ A��   @ 6 0 Convert a TASKPAPER Date to an APPLESCRIPT date    A � B B `   C o n v e r t   a   T A S K P A P E R   D a t e   t o   a n   A P P L E S C R I P T   d a t e ?  C D C l     �� E F��   E H B (avoiding assumptions about locale-dependent date string formats)    F � G G �   ( a v o i d i n g   a s s u m p t i o n s   a b o u t   l o c a l e - d e p e n d e n t   d a t e   s t r i n g   f o r m a t s ) D  H I H i     J K J I      �� L���� 0 tp2asdatetime TP2ASDateTime L  M�� M o      ���� 0 strdate strDate��  ��   K O     � N O N k    � P P  Q R Q l   �� S T��   S   SPLIT INTO DATE AND TIME    T � U U 2   S P L I T   I N T O   D A T E   A N D   T I M E R  V W V r     X Y X J     Z Z  [ \ [ n    ] ^ ] 1   	 ��
�� 
txdl ^  f    	 \  _�� _ 1    ��
�� 
spac��   Y J       ` `  a b a o      ���� 0 dlm   b  c�� c n      d e d 1    ��
�� 
txdl e  f    ��   W  f g f r     % h i h n     # j k j 2  ! #��
�� 
citm k o     !���� 0 strdate strDate i o      ���� 0 lstdatetime lstDateTime g  l m l l  & &��������  ��  ��   m  n o n l  & &�� p q��   p $  READ THE DATE FROM THE STRING    q � r r <   R E A D   T H E   D A T E   F R O M   T H E   S T R I N G o  s t s r   & + u v u m   & ' w w � x x  - v n      y z y 1   ( *��
�� 
txdl z  f   ' ( t  { | { r   , H } ~ } n   , 2  �  2  0 2��
�� 
citm � n   , 0 � � � 4   - 0�� �
�� 
cobj � m   . /����  � o   , -���� 0 lstdatetime lstDateTime ~ J       � �  � � � o      ���� 0 stryear strYear �  � � � o      ���� 0 strmonth strMonth �  ��� � o      ���� 0 strday strDay��   |  � � � l  I I��������  ��  ��   �  � � � l  I I�� � ���   � . ( PLACE IT IN THE APPLESCRIPT DATE OBJECT    � � � � P   P L A C E   I T   I N   T H E   A P P L E S C R I P T   D A T E   O B J E C T �  � � � l  I N � � � � r   I N � � � m   I J����  � n      � � � 1   K M��
�� 
day  �  g   J K � 9 3 (temporarily, lest a short month lack some days)		    � � � � f   ( t e m p o r a r i l y ,   l e s t   a   s h o r t   m o n t h   l a c k   s o m e   d a y s ) 	 	 �  � � � r   O z � � � J   O U � �  � � � o   O P���� 0 stryear strYear �  � � � o   P Q���� 0 strmonth strMonth �  � � � o   Q R���� 0 strday strDay �  ��� � m   R S����  ��   � J       � �  � � � n      � � � 1   [ ]��
�� 
year �  g   Z [ �  � � � n      � � � m   d f��
�� 
mnth �  g   c d �  � � � n      � � � 1   m o��
�� 
day  �  g   l m �  ��� � n      � � � 1   v x��
�� 
time �  g   u v��   �  � � � l  { {��������  ��  ��   �  � � � l  { {�� � ���   � ( " AND THEN READ ANY TIME COMPONENTS    � � � � D   A N D   T H E N   R E A D   A N Y   T I M E   C O M P O N E N T S �  � � � Z   { � � ����� � ?   { � � � � l  { ~ ����� � n   { ~ � � � 1   | ~��
�� 
leng � o   { |���� 0 lstdatetime lstDateTime��  ��   � m   ~ ����  � k   � � � �  � � � r   � � � � � m   � � � � � � �  : � n      � � � 1   � ���
�� 
txdl �  f   � � �  � � � r   � � � � � n   � � � � � 2  � ���
�� 
citm � l  � � ����� � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 lstdatetime lstDateTime��  ��   � o      ���� 0 lsttime lstTime �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n   � � � � � 7  � ��� � �
�� 
cobj � m   � �����  � m   � �����  � o   � ����� 0 lsttime lstTime � J       � �  � � � n      � � � 1   � ���
�� 
hour �  g   � � �  ��� � n      � � � 1   � ���
�� 
min  �  g   � ���   �  ��� � Z  � � � ����� � ?   � � � � � l  � � ���~ � n   � � � � � 1   � ��}
�} 
leng � o   � ��|�| 0 lsttime lstTime�  �~   � m   � ��{�{  � r   � � � � � n   � � � � � 4   � ��z �
�z 
cobj � m   � ��y�y  � o   � ��x�x 0 lsttime lstTime � n      � � � m   � ��w
�w 
scnd �  g   � ���  ��  ��  ��  ��   �  � � � l  � ��v�u�t�v  �u  �t   �  � � � r   � � �  � o   � ��s�s 0 dlm    n      1   � ��r
�r 
txdl  f   � � � �q L   � �  g   � ��q   O l    �p�o I    �n�m�l
�n .misccurdldt    ��� null�m  �l  �p  �o   I  l     �k�j�i�k  �j  �i   	 l     �h�g�f�h  �g  �f  	 

 l     �e�e   6 0 Convert an APPLESCRIPT date to a TASKPAPER Date    � `   C o n v e r t   a n   A P P L E S C R I P T   d a t e   t o   a   T A S K P A P E R   D a t e  l     �d�d   ' ! (including or dropping the time)    � B   ( i n c l u d i n g   o r   d r o p p i n g   t h e   t i m e )  i    
 I      �c�b�c 0 as2tpdatetime AS2TPDateTime  o      �a�a 0 dteas dteAS �` o      �_�_ 0 blntime blnTime�`  �b   k     j  O     g  k    f!! "#" r    $%$ J    && '(' n   )*) 1    �^
�^ 
year*  g    ( +,+ n   -.- I    �]/�\�] 0 padnum PadNum/ 010 l   2�[�Z2 c    343 n   565 m   	 �Y
�Y 
mnth6  g    	4 m    �X
�X 
long�[  �Z  1 7�W7 m    �V�V �W  �\  .  f    , 8�U8 n   9:9 I    �T;�S�T 0 padnum PadNum; <=< l   >�R�Q> n   ?@? 1    �P
�P 
day @  g    �R  �Q  = A�OA m    �N�N �O  �S  :  f    �U  % o      �M�M 0 lstdate lstDate# BCB r     7DED J     &FF GHG n    #IJI 1   ! #�L
�L 
txdlJ  f     !H K�KK m   # $LL �MM  -�K  E J      NN OPO o      �J�J 0 dlm  P Q�IQ n     RSR 1   3 5�H
�H 
txdlS  f   2 3�I  C TUT r   8 =VWV c   8 ;XYX o   8 9�G�G 0 lstdate lstDateY m   9 :�F
�F 
TEXTW o      �E�E 0 strdate strDateU Z[Z l  > >�D�C�B�D  �C  �B  [ \]\ r   > C^_^ m   > ?`` �aa  :_ n     bcb 1   @ B�A
�A 
txdlc  f   ? @] ded Z   D `fg�@�?f o   D E�>�> 0 blntime blnTimeg k   H \hh iji r   H Rklk J   H Pmm non n  H Kpqp 1   I K�=
�= 
hourq  g   H Io r�<r n  K Nsts 1   L N�;
�; 
min t  g   K L�<  l o      �:�: 0 lsttime lstTimej u�9u r   S \vwv b   S Zxyx b   S Vz{z o   S T�8�8 0 strdate strDate{ 1   T U�7
�7 
spacy l  V Y|�6�5| c   V Y}~} o   V W�4�4 0 lsttime lstTime~ m   W X�3
�3 
TEXT�6  �5  w o      �2�2 0 strdate strDate�9  �@  �?  e �1 r   a f��� o   a b�0�0 0 dlm  � n     ��� 1   c e�/
�/ 
txdl�  f   b c�1    o     �.�. 0 dteas dteAS ��-� L   h j�� o   h i�,�, 0 strdate strDate�-   ��� l     �+�*�)�+  �*  �)  � ��� l     �(���(  � / ) Add leading zeros to get specified width   � ��� R   A d d   l e a d i n g   z e r o s   t o   g e t   s p e c i f i e d   w i d t h� ��� i    ��� I      �'��&�' 0 padnum PadNum� ��� o      �%�% 0 lngnum lngNum� ��$� o      �#�# 0 	lngdigits 	lngDigits�$  �&  � k     )�� ��� r     ��� c     ��� o     �"�" 0 lngnum lngNum� m    �!
�! 
TEXT� o      � �  0 strnum strNum� ��� r    ��� l   ���� \    ��� o    �� 0 	lngdigits 	lngDigits� l   
���� n    
��� 1    
�
� 
leng� o    �� 0 strnum strNum�  �  �  �  � o      �� 0 lnggap lngGap� ��� V    &��� k    !�� ��� r    ��� b    ��� m    �� ���  0� o    �� 0 strnum strNum� o      �� 0 strnum strNum� ��� r    !��� \    ��� o    �� 0 lnggap lngGap� m    �� � o      �� 0 lnggap lngGap�  � ?    ��� o    �� 0 lnggap lngGap� m    ��  � ��� L   ' )�� o   ' (�� 0 strnum strNum�  � ��� l     ����  �  �  � ��� l     �
�	��
  �	  �  � ��� l     ����  �  �  � ��� i    ��� I      ���� 0 	unixepoch 	UnixEpoch�  �  � k     7�� ��� l     ����  � 8 2 Using date "1/1/1970" is too parochial, consider:   � ��� d   U s i n g   d a t e   " 1 / 1 / 1 9 7 0 "   i s   t o o   p a r o c h i a l ,   c o n s i d e r :� ��� l     � ���   � - ' date "??? ????? 1 ????? 1970 00:00:00"   � ��� N   d a t e   "���  �����   1  �����   1 9 7 0   0 0 : 0 0 : 0 0 "� ��� l     ������  � = 7 and it would actually fail in some locales e.g. China,   � ��� n   a n d   i t   w o u l d   a c t u a l l y   f a i l   i n   s o m e   l o c a l e s   e . g .   C h i n a ,� ��� l     ������  � 8 2 where a growing proportion of macs are bought ...   � ��� d   w h e r e   a   g r o w i n g   p r o p o r t i o n   o f   m a c s   a r e   b o u g h t   . . .� ��� l     ������  � g a http://www.nytimes.com/2011/07/25/technology/apple-sales-in-china-zoom-ahead-of-competitors.html   � ��� �   h t t p : / / w w w . n y t i m e s . c o m / 2 0 1 1 / 0 7 / 2 5 / t e c h n o l o g y / a p p l e - s a l e s - i n - c h i n a - z o o m - a h e a d - o f - c o m p e t i t o r s . h t m l� ��� l     ������  � %  date "1970?1?1???? ??12:00:00"   � ��� >   d a t e   " 1 9 7 0^t 1g 1e�fgV�  N
SH 1 2 : 0 0 : 0 0 "� ��� l     ��������  ��  ��  � ���� O     7��� k    6�� ��� r    3��� J    �� ��� m    	������ ��� m   	 
���� � ��� m   
 ���� � ���� m    ����  ��  � J      �� ��� n     ��� 1    ��
�� 
year�  g    � ��� n     ��� 1    ��
�� 
day �  g    �    n      m   & (��
�� 
mnth  g   % & �� n      1   / 1��
�� 
time  g   . /��  � �� L   4 6  g   4 5��  � l    	����	 I    ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  � 
��
 l     ��������  ��  ��  ��       �� ����������   �������������������������� 0 pver pVer�� 0 tp2asdatetime TP2ASDateTime�� 0 as2tpdatetime AS2TPDateTime�� 0 padnum PadNum�� 0 	unixepoch 	UnixEpoch
�� .aevtoappnull  �   � ****�� 0 blntime blnTime�� $0 strtaskpaperdate strTaskPaperDate�� 0 dtenow dteNow��  ��  ��   �� K�������� 0 tp2asdatetime TP2ASDateTime�� ����   ���� 0 strdate strDate��   ���������������� 0 strdate strDate�� 0 dlm  �� 0 lstdatetime lstDateTime�� 0 stryear strYear�� 0 strmonth strMonth�� 0 strday strDay�� 0 lsttime lstTime ���������� w������������ �������
�� .misccurdldt    ��� null
�� 
txdl
�� 
spac
�� 
cobj
�� 
citm
�� 
day �� 
�� 
year
�� 
mnth
�� 
time
�� 
leng
�� 
hour
�� 
min 
�� 
scnd�� �*j   �)�,�lvE[�k/E�Z[�l/)�,FZO��-E�O�)�,FO��k/�-E[�k/E�Z[�l/E�Z[�m/E�ZOk*�,FO���j�vE[�k/*�,FZ[�l/*�,FZ[�m/*�,FZ[��/*�,FZO��,k G�)�,FO��l/�-E�O�[�\[Zk\Zl2E[�k/*�,FZ[�l/*�,FZO��,l ��m/*�,FY hY hO�)�,FO*U ���������� 0 as2tpdatetime AS2TPDateTime�� ����   ������ 0 dteas dteAS�� 0 blntime blnTime��   �������������� 0 dteas dteAS�� 0 blntime blnTime�� 0 lstdate lstDate�� 0 dlm  �� 0 strdate strDate�� 0 lsttime lstTime ������������L����`������
�� 
year
�� 
mnth
�� 
long�� 0 padnum PadNum
�� 
day 
�� 
txdl
�� 
cobj
�� 
TEXT
�� 
hour
�� 
min 
�� 
spac�� k� d*�,)*�,�&ll+ )*�,ll+ mvE�O)�,�lvE[�k/E�Z[�l/)�,FZO��&E�O�)�,FO� *�,*�,lvE�O��%��&%E�Y hO�)�,FUO� ����������� 0 padnum PadNum�� ����   ������ 0 lngnum lngNum�� 0 	lngdigits 	lngDigits��   ���������� 0 lngnum lngNum�� 0 	lngdigits 	lngDigits�� 0 strnum strNum�� 0 lnggap lngGap �����
�� 
TEXT
�� 
leng�� *��&E�O���,E�O h�j�%E�O�kE�[OY��O� ����������� 0 	unixepoch 	UnixEpoch��  ��     ����������������
�� .misccurdldt    ��� null����� 
�� 
cobj
�� 
year
�� 
day 
�� 
mnth
�� 
time�� 8*j   0�kkj�vE[�k/*�,FZ[�l/*�,FZ[�m/*�,FZ[��/*�,FZO*U ������ ��
�� .aevtoappnull  �   � **** k     !!  ""  ##  *$$  3����  ��  ��      ������~�}�|�� 0 blntime blnTime
�� .misccurdldt    ��� null� 0 as2tpdatetime AS2TPDateTime�~ $0 strtaskpaperdate strTaskPaperDate�} 0 tp2asdatetime TP2ASDateTime�| 0 dtenow dteNow��  eE�O**j �l+ E�O*�k+ E�O��lv
�� boovtrue �%%   2 0 1 4 - 0 2 - 0 5   2 1 : 2 6 ldt     �\���  ��  ��   ascr  ��ޭ