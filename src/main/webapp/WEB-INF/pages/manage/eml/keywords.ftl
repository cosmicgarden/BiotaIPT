<#escape x as x?html>
<#setting number_format="#####.##">
<#include "/WEB-INF/pages/inc/header.ftl">
<title><@s.text name='manage.metadata.keywords.title'/></title>
<#include "/WEB-INF/pages/macros/metadata.ftl"/>
 <#assign sideMenuEml=true />
 <#assign currentMenu="manage"/>
<script type="text/javascript">
$(document).ready(function(){
	<#if eml.keywords[1]??>
			var kys1=jQuery("#eml\\.keywords\\[1\\]\\.keywordsString").val();
			if((kys1.indexOf('[keywords]'))!=-1){
				
				var splk=kys1.split('[keywords]');
				$("#eml\\.keywords\\[1\\]\\.keywordsString").val(splk[1]);
			}
		
	</#if>
	initHelp();
	
	$("#save").click(function(event){
      //event.preventDefault(); 
      var keys=jQuery("#eml\\.keywords\\[1\\]\\.keywordsString").val();
      if(keys.indexOf('[keywords]')!=-1){
      	keys='';
      }
      if((keys=='[keywords]')||(keys=='')){
      	$("#eml\\.keywords\\[1\\]\\.keywordsString").val('');
      }else{
      	$("#eml\\.keywords\\[1\\]\\.keywordsString").val('[keywords]'+keys);
      }
    });
});
</script>
<#include "/WEB-INF/pages/inc/menu.ftl">
<#include "/WEB-INF/pages/macros/forms.ftl"/>


<h1><span class="superscript"><@s.text name='manage.overview.title.label'/></span>
    <a href="resource.do?r=${resource.shortname}" title="${resource.title!resource.shortname}">${resource.title!resource.shortname}</a>
</h1>
<div class="grid_17 suffix_1">
<h2 class="subTitle"><@s.text name='manage.metadata.keywords.title'/></h2>
<form class="topForm" action="metadata-${section}.do" method="post">
    <p><@s.text name='manage.metadata.keywords.intro'/></p>
	<div id="items">
			<div id="item-0" class="item">
			<div class="newline"></div>
			
			<@input name="eml.keywords[0].keywordThesaurus" i18nkey="eml.keywords.keywordThesaurus" help="i18n" requiredField=true />
			<@text name="eml.keywords[0].keywordsString" i18nkey="eml.keywords.keywordThesaurus.palabras" help="i18n" requiredField=true/>
			
		  	</div>
		  	
		  	<div id="item-1" class="item">
			<div class="newline"></div>
			<@input name="eml.keywords[1].keywordThesaurus" i18nkey="eml.keywords.keywordThesaurus" help="i18n" requiredField=true />
			<@text name="eml.keywords[1].keywordsString" i18nkey="eml.keywords.keywordThesaurus.keywords" help="i18n" requiredField=true/>
		  	</div>
	</div>
	
	<div class="buttons">
		<@s.submit cssClass="button" name="save" key="button.save" />
		<@s.submit cssClass="button" name="cancel" key="button.cancel" />
	</div>
	<!-- internal parameter -->
	<input name="r" type="hidden" value="${resource.shortname}" />
</form>
</div>
<div id="baseItem" class="item" style="display:none;">
	<div class="right">
      <a id="removeLink" class="removeLink" href="">[ <@s.text name='manage.metadata.removethis'/> <@s.text name='manage.metadata.keywords.item'/> ]</a>
    </div>
	<@input name="keywordThesaurus" i18nkey="eml.keywords.keywordThesaurus" help="i18n" requiredField=true/>
	<@text name="keywordsString" i18nkey="eml.keywords.keywordsString" help="i18n" requiredField=true/>
</div>
<#include "/WEB-INF/pages/inc/footer.ftl">
</#escape>	
