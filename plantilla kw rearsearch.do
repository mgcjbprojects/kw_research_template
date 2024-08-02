*Importar de excel base de datos y guardar*
 import excel "C:\Users\tu\Documents\planes moviles.xlsx", sheet("Hoja1") firstrow
*Guardar y filtrar datos*
 save "C:\Users\tu\Documents\planesmoviles.dta"
 *para filtrar los datos de valores no significanes generales, se puede añadir otros valoes o modificar*
use "C:\Users\tu\Documents\planesmoviles.dta"", clear
drop if strpos(Kwprincipales, ".")> 0| strpos(Kwprincipales, "www")> 0|strpos(Kwprincipales, "doc")> 0| strpos(Kwprincipales, "pdf")> 0| strpos(Kwprincipales, "xml")> 0| strpos(Kwprincipales, "ppt")> 0| 	strpos(Kwprincipales, "prezi")> 0|strpos(Kwprincipales, "según")> 0| 	strpos(Kwprincipales, "autor")> 0| strpos(Kwprincipales, "word")> 0| strpos(Kwprincipales, "linguee")> 0| strpos(Kwprincipales, "libro")> 0| strpos(Kwprincipales, "wiki")> 0| strpos(Kwprincipales, "monografia")> 0| strpos(Kwprincipales, "pdf")> 0| strpos(Kwprincipales, "tesis")> 0| strpos(Kwprincipales, "translate")> 0| strpos(Kwprincipales, "ingles")> 0| strpos(Kwprincipales, "traduccion")> 0| 	strpos(Kwprincipales, ":")> 0| strpos(Kwprincipales, ",")> 0| strpos(Kwprincipales, "-")> 0| strpos(Kwprincipales, "&")> 0| 	strpos(Kwprincipales, "#")> 0| strpos(Kwprincipales, "foto")> 0| strpos(Kwprincipales, "imagen")> 0| 	strpos(Kwprincipales, "jpg")> 0| strpos(Kwprincipales, "png")> 0| strpos(Kwprincipales, "rae")> 0|strpos(Kwprincipales, "diccionario")> 0| strpos(Kwprincipales, "ebay")> 0| strpos(Kwprincipales, "amazon")> 0| strpos(Kwprincipales, "mercadolibre")> 0| strpos(Kwprincipales, "olx")> 0| strpos(Kwprincipales, "facebook")> 0| strpos(Kwprincipales, "yahoo")> 0| 	strpos(Kwprincipales, "youtube")> 0| strpos(Kwprincipales, "slide")> 0| strpos(Kwprincipales, "ortografia")> 0| 	strpos(Kwprincipales, "`")> 0| strpos(Kwprincipales, "1")> 0| 	strpos(Kwprincipales, "2")> 0| 	strpos(Kwprincipales, "3")> 0| 	strpos(Kwprincipales, "4")> 0| 	strpos(Kwprincipales, "5")> 0| 	strpos(Kwprincipales, "6")> 0| 	strpos(Kwprincipales, "7")> 0| strpos(Kwprincipales, "8")> 0| strpos(Kwprincipales, "9")> 0| 	strpos(Kwprincipales, "'")> 0| 	strpos(Kwprincipales, "pinterest")> 0| 	strpos(Kwprincipales, "linkedin")> 0| 	strpos(Kwprincipales, "ikea")> 0| 	strpos(Kwprincipales, "milanuncios")> 0| strpos(Kwprincipales, "letra")> 0| strpos(Kwprincipales, "english")> 0 | strpos(Kwprincipales, "nueva york")> 0| strpos(Kwprincipales, "francia")> 0
*nuevamente guardar base de datos*
 save "C:\Users\tu\Documents\planesmoviles.dta", replace
 *filtro de datos kw informativ*
 *para expresar cantidad: cuant/mucho/poco/necesario/suficiente*
 use "C:\Users\tu\Documents\prepago.dta", clear
keep if strpos(Kwprincipales, "cuant") > 0| strpos(Kwprincipales, "mucho")> 0| strpos(Kwprincipales, "necesa")> 0| strpos(Kwprincipales, "suficient")> 0
drop if  strpos(Kwprincipales, "mejor")> 0| strpos(Kwprincipales, "que son")> 0| strpos(Kwprincipales, "cual")> 0 | strpos(Kwprincipales, "como")> 0| strpos(Kwprincipales, "para que")> 0
 browse
  *para expresar comparacion:diferencia/vs /compara/ o x keyword*
 use "C:\Users\tu\Documents\telefonia.dta", clear
 keep if strpos(Kwprincipales, "diferenc") > 0| strpos(Kwprincipales, "vs")> 0| strpos(Kwprincipales, "o x kw")> 0| strpos(Kwprincipales, "compar")> 0
	  drop if  strpos(Kwprincipales, "cuant")> 0| strpos(Kwprincipales, "mucho")> 0| strpos(Kwprincipales, "mejor")> 0| strpos(Kwprincipales, "que es")> 0| strpos(Kwprincipales, "mejor")> 0| strpos(Kwprincipales, "como")> 0| strpos(Kwprincipales, "para que")> 0| strpos(Kwprincipales, "defini")> 0
browse
  *para expresar identidad:que es/que son/ signif/definicion/concept/sobre*
  use "C:\Users\tu\Documents\telefonia.dta", clear
 keep if strpos(Kwprincipales, "que es") > 0| strpos(Kwprincipales, "signific")> 0| strpos(Kwprincipales, "defini")> 0| strpos(Kwprincipales, "concept")> 0| strpos(Kwprincipales, "que son")> 0| strpos(Kwprincipales, "sobre")> 0
drop if  strpos(Kwprincipales, "cuant")> 0| strpos(Kwprincipales, "mucho")> 0| strpos(Kwprincipales, "mejor")> 0|strpos(Kwprincipales, "como")> 0| strpos(Kwprincipales, "para que")> 0| strpos(Kwprincipales, "diferen")> 0
browse
*para expresar comparacion:que es mejor/cual/recomend*
 use "C:\Users\tu\Documents\telefonia.dta", clear
keep if strpos(Kwprincipales, "cual") > 0| strpos(Kwprincipales, "mejor")> 0| strpos(Kwprincipales, "recomend")> 0
drop if  strpos(Kwprincipales, "cuant")> 0| strpos(Kwprincipales, "mucho")> 0|strpos(Kwprincipales, "como")> 0| strpos(Kwprincipales, "para que")> 0| strpos(Kwprincipales, "diferen")> 0| strpos(Kwprincipales, "signific")> 0| strpos(Kwprincipales, "defini")> 0| strpos(Kwprincipales, "concept")> 0| strpos(Kwprincipales, "que son")> 0| strpos(Kwprincipales, "sobre")> 0
browse
*para expresar funcionalidad: como/para que/hacer*
use "C:\Users\tu\Documents\telefonia.dta", clear
   keep if strpos(Kwprincipales, "como") > 0| strpos(Kwprincipales, "para que")> 0| strpos(Kwprincipales, "hac")> 0
   drop if  strpos(Kwprincipales, "cuant")> 0| strpos(Kwprincipales, "mucho")> 0| strpos(Kwprincipales, "mejor")> 0|strpos(Kwprincipales, "cual")> 0| strpos(Kwprincipales, "que es")> 0| strpos(Kwprincipales, "diferen")> 0| strpos(Kwprincipales, "signific")> 0| strpos(Kwprincipales, "defini")> 0| strpos(Kwprincipales, "concept")> 0| strpos(Kwprincipales, "que son")> 0| strpos(Kwprincipales, "sobre")> 0
   browse
   
*para expresar comparacion: caracteristicas/beneficios*
use "C:\Users\tu\Documents\Kw reaserch SEO\megassininformati.dta", clear
   keep if strpos(Kwprincipales, "caracte") > 0| strpos(Kwprincipales, "beneficios")> 0| strpos(Kwprincipales, "bueno")> 0| strpos(Kwprincipales, "malo")> 0
   drop if  strpos(Kwprincipales, "cuant")> 0| strpos(Kwprincipales, "mucho")> 0| strpos(Kwprincipales, "mejor")> 0|strpos(Kwprincipales, "cual")> 0| strpos(Kwprincipales, "que es")> 0| strpos(Kwprincipales, "diferen")> 0| strpos(Kwprincipales, "signific")> 0| strpos(Kwprincipales, "defini")> 0| strpos(Kwprincipales, "concept")> 0| strpos(Kwprincipales, "que son")> 0| strpos(Kwprincipales, "sobre")> 0|strpos(Kwprincipales, "como") > 0| strpos(Kwprincipales, "para que")> 0| strpos(Kwprincipales, "hac")> 0| strpos(Kwprincipales, "porque")> 0
    browse
*para expresar razon/motivo: porque/razon*
use "C:\Users\tu\Documents\Kw reaserch SEO\megassininformati.dta", clear
   keep if strpos(Kwprincipales, "porque") > 0| strpos(Kwprincipales, "razon")> 0
    drop if  strpos(Kwprincipales, "cuant")> 0| strpos(Kwprincipales, "mucho")> 0| strpos(Kwprincipales, "mejor")> 0|strpos(Kwprincipales, "cual")> 0| strpos(Kwprincipales, "que es")> 0| strpos(Kwprincipales, "diferen")> 0| strpos(Kwprincipales, "signific")> 0| strpos(Kwprincipales, "defini")> 0| strpos(Kwprincipales, "concept")> 0| strpos(Kwprincipales, "que son")> 0| strpos(Kwprincipales, "sobre")> 0|strpos(Kwprincipales, "como") > 0| strpos(Kwprincipales, "para que")> 0| strpos(Kwprincipales, "hac")> 0|strpos(Kwprincipales, "bueno")> 0|strpos(Kwprincipales, "malo")> 0|strpos(Kwprincipales, "beneficio")> 0|strpos(Kwprincipales, "caracteristicas")> 
browse 

    *filtrar todas las kws informativas*
use "C:\Users\tu\Documents\Kw reaserch SEO\megasinternet.dta", clear
drop if  strpos(Kwprincipales, "cuant")> 0| strpos(Kwprincipales, "mucho")> 0| strpos(Kwprincipales, "mejor")> 0|strpos(Kwprincipales, "cual")> 0| strpos(Kwprincipales, "que es")> 0| strpos(Kwprincipales, "diferen")> 0| strpos(Kwprincipales, "signific")> 0| strpos(Kwprincipales, "defini")> 0| strpos(Kwprincipales, "concept")> 0| strpos(Kwprincipales, "que son")> 0| strpos(Kwprincipales, "sobre")> 0|strpos(Kwprincipales, "como") > 0| strpos(Kwprincipales, "para que")> 0| strpos(Kwprincipales, "hac")> 0| strpos(Kwprincipales, "porque")> 0| strpos(Kwprincipales, "bueno")> 0|strpos(Kwprincipales, "malo")> 0|strpos(Kwprincipales, "beneficio")> 0|strpos(Kwprincipales, "caracteristicas")> 0
browse
    *filtrar todas las kws transaccionales*
*para expresar urgencia: rapido/lento/express/inmediat/urgen*
use  "C:\Users\tu\Documents\Kw reaserch SEO\megassininformati.dta", clear
keep if strpos(Kwprincipales, "rapido")> 0| strpos(Kwprincipales, "lento")> 0| strpos(Kwprincipales, "express")> 0| strpos(Kwprincipales, "inmediat")> 0| strpos(Kwprincipales, "urgent")> 0
drop if strpos(Kwprincipales, "ilimit")> 0
browse
*para expresar beneficios: gratis/economico/barato*
use  "C:\Users\tu\Documents\Kw reaserch SEO\megassininformati.dta", clear
keep if strpos(Kwprincipales, "gratis")> 0| strpos(Kwprincipales, "econ")> 0| strpos(Kwprincipales, "barato")> 0| strpos(Kwprincipales, "velocidad")> 0
drop if strpos(Kwprincipales, "ilimit")> 0
browse
*para expresar beneficios: ilimitad*
use  "C:\Users\tu\Documents\Kw reaserch SEO\megassininformati.dta", clear
keep if strpos(Kwprincipales, "ilimita")> 0
drop if  strpos(Kwprincipales, "precio")> 0| strpos(Kwprincipales, "cuest")> 0| strpos(Kwprincipales, "cost")> 0
browse
*para expresar intercambio: compr/vender/vent*
use  "C:\Users\tu\Documents\Kw reaserch SEO\megassininformati.dta", clear
keep if strpos(Kwprincipales, "compr")> 0| strpos(Kwprincipales, "vend")> 0| strpos(Kwprincipales, "vent")> 0
drop if  strpos(Kwprincipales, "precio")> 0| strpos(Kwprincipales, "cuest")> 0| strpos(Kwprincipales, "cost")> 0| strpos(Kwprincipales, "barat")> 0| strpos(Kwprincipales, "cost")> 0
browse
*para expresar precio: precio/cost/cuest/cuant/vale
use  "C:\Users\tu\Documents\Kw reaserch SEO\megassininformati.dta", clear
drop if strpos(Kwprincipales, "ilimita")> 0| strpos(Kwprincipales, "precio")> 0| strpos(Kwprincipales, "quito")> 0| strpos(Kwprincipales, "guayaquil")> 0| strpos(Kwprincipales, "ecuador")> 0
keep if  strpos(Kwprincipales, "precio")> 0| strpos(Kwprincipales, "cuest")> 0| strpos(Kwprincipales, "cost")> 0| strpos(Kwprincipales, "cuant")> 0| strpos(Kwprincipales, "val")> 0
browse
*para expresar urgencia: 24h/ya/hoy/cuando/ 24 horas*
use  "C:\Users\tu\Documents\Kw reaserch SEO\megassininformati.dta", clear
keep if strpos(Kwprincipales, "24h")> 0| strpos(Kwprincipales, "ya")> 0| strpos(Kwprincipales, "hoy")> 0| strpos(Kwprincipales, "cuand")> 0| strpos(Kwprincipales, "24 horas")> 0
drop if strpos(Kwprincipales, "ilimit")> 0| strpos(Kwprincipales, "quito")> 0| strpos(Kwprincipales, "guayaquil")> 0| strpos(Kwprincipales, "ecuador")> 0
browse
*para expresar urgencia: cotiza/presupuest*
use  "C:\Users\tu\Documents\Kw reaserch SEO\megassininformati.dta", clear
keep if strpos(Kwprincipales, "cotiza")> 0| strpos(Kwprincipales, "presupuest")> 0
drop if strpos(Kwprincipales, "ilimit")> 0| strpos(Kwprincipales, "quito")> 0| strpos(Kwprincipales, "guayaquil")> 0| strpos(Kwprincipales, "ecuador")> 0| strpos(Kwprincipales, "hoy")> 0| strpos(Kwprincipales, "cuand")> 0| strpos(Kwprincipales, "24 horas")> 0
browse
*para expresar locacion: donde*
use  "C:\Users\tu\Documents\Kw reaserch SEO\megassininformati.dta", clear
keep if strpos(Kwprincipales, "donde")> 0
drop if strpos(Kwprincipales, "ilimit")> 0| strpos(Kwprincipales, "quito")> 0| strpos(Kwprincipales, "guayaquil")> 0| strpos(Kwprincipales, "ecuador")> 0| strpos(Kwprincipales, "hoy")> 0| strpos(Kwprincipales, "cuand")> 0| strpos(Kwprincipales, "24 horas")> 0
browse
*para expresar locacion: quito/guayaquil/ecuador*
use  "C:\Users\tu\Documents\Kw reaserch SEO\megassininformati.dta", clear
keep if strpos(Kwprincipales, "quito")> 0| strpos(Kwprincipales, "guayaquil")> 0| strpos(Kwprincipales, "ecuador")> 0

drop if strpos(Kwprincipales, "ilimit")> 0| strpos(Kwprincipales, "precio")> 0| strpos(Kwprincipales, "barat")> 0| strpos(Kwprincipales, "cuant")> 0| strpos(Kwprincipales, "hoy")> 0| strpos(Kwprincipales, "cuand")> 0| strpos(Kwprincipales, "24 horas")> 0
browse
*para expresar locacion: empresa/agencia/negocio*
use  "C:\Users\tu\Documents\Kw reaserch SEO\megassininformati.dta", clear
keep if strpos(Kwprincipales, "empresa")> 0| strpos(Kwprincipales, "agencia")> 0| strpos(Kwprincipales, "negocio")> 0
drop if strpos(Kwprincipales, "quito")> 0| strpos(Kwprincipales, "precio")> 0| strpos(Kwprincipales, "barat")> 0| strpos(Kwprincipales, "cuant")> 0| strpos(Kwprincipales, "guayaquil")> 0| strpos(Kwprincipales, "ecuador")> 0| strpos(Kwprincipales, "24 horas")> 0| strpos(Kwprincipales, "24h")> 0
browse
*para expresar locacion: servicio*
use  "C:\Users\tu\Documents\Kw reaserch SEO\megassininformati.dta", clear
keep if strpos(Kwprincipales, "servicio")> 0
drop if strpos(Kwprincipales, "quito")> 0| strpos(Kwprincipales, "precio")> 0| strpos(Kwprincipales, "barat")> 0| strpos(Kwprincipales, "cuant")> 0| strpos(Kwprincipales, "guayaquil")> 0| strpos(Kwprincipales, "ecuador")> 0| strpos(Kwprincipales, "24 horas")> 0| strpos(Kwprincipales, "24h")> 0| strpos(Kwprincipales, "agencia")> 0| strpos(Kwprincipales, "negocio")> 0
browse
