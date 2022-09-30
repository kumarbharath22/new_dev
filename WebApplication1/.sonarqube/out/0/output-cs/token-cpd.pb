„
dC:\Users\gayat\OneDrive\Desktop\Sample\WebApplication1\WebApplication1\Controllers\HomeController.cs
	namespace

 	
WebApplication1


 
.

 
Controllers

 %
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private 
readonly 
ILogger  
<  !
HomeController! /
>/ 0
_logger1 8
;8 9
public 
HomeController 
( 
ILogger %
<% &
HomeController& 4
>4 5
logger6 <
)< =
{ 	
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Privacy $
($ %
)% &
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
ResponseCache	 
( 
Duration 
=  !
$num" #
,# $
Location% -
=. /!
ResponseCacheLocation0 E
.E F
NoneF J
,J K
NoStoreL S
=T U
trueV Z
)Z [
][ \
public   
IActionResult   
Error   "
(  " #
)  # $
{!! 	
return"" 
View"" 
("" 
new"" 
ErrorViewModel"" *
{""+ ,
	RequestId""- 6
=""7 8
Activity""9 A
.""A B
Current""B I
?""I J
.""J K
Id""K M
??""N P
HttpContext""Q \
.""\ ]
TraceIdentifier""] l
}""m n
)""n o
;""o p
}## 	
}$$ 
}%% °
_C:\Users\gayat\OneDrive\Desktop\Sample\WebApplication1\WebApplication1\Models\ErrorViewModel.cs
	namespace 	
WebApplication1
 
. 
Models  
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
bool		 
ShowRequestId		 !
=>		" $
!		% &
string		& ,
.		, -
IsNullOrEmpty		- :
(		: ;
	RequestId		; D
)		D E
;		E F
}

 
} ®

QC:\Users\gayat\OneDrive\Desktop\Sample\WebApplication1\WebApplication1\Program.cs
	namespace

 	
WebApplication1


 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ¥
QC:\Users\gayat\OneDrive\Desktop\Sample\WebApplication1\WebApplication1\Startup.cs
	namespace 	
WebApplication1
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. #
AddControllersWithViews ,
(, -
)- .
;. /
} 	
public 
void 
	Configure 
( 
IApplicationBuilder 1
app2 5
,5 6
IWebHostEnvironment7 J
envK N
)N O
{ 	
if 
( 
env 
. 
IsDevelopment !
(! "
)" #
)# $
{   
app!! 
.!! %
UseDeveloperExceptionPage!! -
(!!- .
)!!. /
;!!/ 0
}"" 
else## 
{$$ 
app%% 
.%% 
UseExceptionHandler%% '
(%%' (
$str%%( 5
)%%5 6
;%%6 7
}&& 
app'' 
.'' 
UseStaticFiles'' 
('' 
)''  
;''  !
app)) 
.)) 

UseRouting)) 
()) 
))) 
;)) 
app++ 
.++ 
UseAuthorization++  
(++  !
)++! "
;++" #
app-- 
.-- 
UseEndpoints-- 
(-- 
	endpoints-- &
=>--' )
{.. 
	endpoints// 
.// 
MapControllerRoute// ,
(//, -
name00 
:00 
$str00 #
,00# $
pattern11 
:11 
$str11 E
)11E F
;11F G
}22 
)22 
;22 
}33 	
}44 
}55 