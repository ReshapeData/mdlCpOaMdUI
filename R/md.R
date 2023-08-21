#' 按日期同步界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' mdUI()
mdUI <- function(tabTitle ='按日期同步',
                   colTitles =c('客户操作区域','供应商操作区域',''),
                   widthRates =c(6,6,12),
                   func_left = mdUI_left,
                   func_right =mdUI_right,
                   func_bottom = mdUI_bottom
) {
  
  #三栏式设置，可以复制
  res = tsui::uiGen3(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right,func_bottom = func_bottom )
  return(res)
  
}





#' 请输入文件
#'
#' @return 返回值
#' @export
#'
#' @examples
#' dateUI_left()
mdUI_left <- function() {
  
  
  res <- tagList(
    
    tsui::mdl_ListChoose1(id ="customerERP",label =  "ERP账套名",
                          choiceNames = list("赛普集团新账套"),
                          choiceValues =list("赛普集团新账套"),
                          selected = list("赛普集团新账套")),
    
    tsui::mdl_date(id = 'date_customerByDate_sync',label = '申请日期'),
    shiny::actionButton(inputId = 'btn_customerByDate_sync',label = '按日期同步')
  )
  return(res)
  
}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' dateUI_bottom()
mdUI_right <- function() {
  res <- tagList(
    tsui::mdl_ListChoose1(id ="supplierERP",label =  "ERP账套名",
                          choiceNames = list("赛普集团新账套"),
                          choiceValues =list("赛普集团新账套"),
                          selected = list("赛普集团新账套")),
    tsui::mdl_date(id = 'date_supplierByDate_sync',label = '申请日期'),
    shiny::actionButton(inputId = 'btn_supplierByDate_sync',label = '按日期同步')
  )
  return(res)
  
}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' dateUI_bottom()
mdUI_bottom <- function() {
  res <- tagList(
    
    
  )
  return(res)
  
}
