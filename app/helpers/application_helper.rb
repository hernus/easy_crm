module ApplicationHelper

 def hello(name)
    '<table border=1><tr><td>col1<td>col2<tr><td>col1<td>col2</table>'.html_safe
 end
 
 def menu(type,p_cont,p_obj)
   seperator = " | "
   menu1 = link_to('home',{:controller=>'home',:action=>'index'},:class=>'av1')

   case type
   when :show
    menu2 =     
     link_to('edit',{:controller=>p_cont,:action=>'edit',:id=>p_obj.id},:class=>'av1') + seperator +
     show_inactive('show') + seperator +
     link_to('delete',{:controller=>p_cont,:action=>'delete',:id=>p_obj.id},:class=>'av1') + seperator + 
     link_to('close',{:controller=>p_cont,:action=>'list'},:class=>'av1')     
   
   when :edit
   menu2 = show_inactive('edit') + seperator +
         link_to('show',{:controller=>p_cont,:action=>'show',:id=>p_obj.id},:class=>'av1') + seperator + 
		 link_to('delete',{:controller=>p_cont,:action=>'delete',:id=>p_obj.id},:class=>'av1')  + seperator +
         link_to('close',{:controller=>p_cont,:action=>'list'},:class=>'av1')        

   when :delete
   menu2 = link_to('edit',{:controller=>p_cont,:action=>'edit',:id=>p_obj.id},:class=>'av1') + seperator +
         link_to('show',{:controller=>p_cont,:action=>'show',:id=>p_obj.id},:class=>'av1') + seperator + 
		 show_inactive('delete')  + seperator +
         link_to('close',{:controller=>p_cont,:action=>'list'},:class=>'av1')        		 

   when :new
   menu2 =  link_to('close',{:controller=>p_cont,:action=>'list'},:class=>'av1')        		 
   	
   when :list   
      text = "create new #{p_cont}"
      menu2 =  link_to(text,{:controller=>p_cont,:action=>'new'},:class=>'av1')        		    
	
   when :menu
      menu1 = ""
   end   
	
   htm = "<div class=menu> <span style='float:right'>#{menu2} </span>#{menu1}</div>".html_safe
 end
 
 def page_header(type,p_cont,p_obj)
   seperator = " | "
   ("<center><span class=topmenu>" + 
   link_to('home',{:controller=>'home',:action=>'index'},:class=>'topmenulink') + seperator +
   link_to('customers',{:controller=>'customer',:action=>'list'},:class=>'topmenulink') + seperator +
   link_to('contacts',{:controller=>'contact',:action=>'list'},:class=>'topmenulink') + seperator +
   link_to('opportunities',{:controller=>'opportunity',:action=>'list'},:class=>'topmenulink') +
   "</span></center>" +
   "<div class=outer> #{menu(type,p_cont,p_obj)} <div class=paper>").html_safe
 end
 
 def page_footer(type,p_cont,p_obj)
   
   htm = "</div> #{menu(type,p_cont,p_obj)} </div>" 
      
	if type == :list || :menu || :show
       htm += "<script type='text/javascript'>" +
	   "var rows=document.getElementById('tab1').getElementsByTagName('tr');var flag=false;" +
       "for(var i=0;i<rows.length;i++){flag=!flag; rows[i].bgColor=flag?'eeeeee':'white'}" +
	   "function shownow(id){ window.location.assign('show?id=' + id)};" +
	   "</script>"      
    end	
	  
   htm.html_safe
 end
 
 
 def vertical_spacer(size)
   "<div style='height:#{size}'></div>".html_safe
 end
 
 def show_inactive(text)
   "<span style='color:silver'>#{text}</span>".html_safe
 end
 

end



