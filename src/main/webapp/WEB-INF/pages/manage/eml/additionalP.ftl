<#escape x as x?html>
<#setting number_format="#####.##">
<#include "/WEB-INF/pages/inc/header.ftl">
<#include "/WEB-INF/pages/macros/metadata.ftl"/>
<script type="text/javascript" src="${baseURL}/js/ajaxfileupload.js"></script>
<script type="text/javascript" src="${baseURL}/js/jconfirmation.jquery.js"></script>
<title><@s.text name='manage.metadata.additional.title'/></title>
<script type="text/javascript">
	$(document).ready(function(){
		initHelp();


	});


</script>
<#assign sideMenuEml=true />
<#assign currentMenu="manage"/>
<#include "/WEB-INF/pages/inc/menu.ftl">
<#include "/WEB-INF/pages/macros/forms.ftl"/>

<h1><span class="superscript"><@s.text name='manage.overview.title.label'/></span>
    <a href="resource.do?r=${resource.shortname}" title="${resource.title!resource.shortname}">${resource.title!resource.shortname}</a>
</h1>
<div class="grid_17 suffix_1">
<form class="topForm" action="metadata-${section}.do" method="post">
<h2 class="subTitle"><@s.text name='manage.metadata.additional.title.intro'/></h2>
    <p><@s.text name='manage.metadata.additional.intro'/></p>
    <div id="Additional-Metadata">
  	  	<@text name="eml.purpose" i18nkey="eml.purpose" help="i18n"/>
  	</div>
    <div id="Alternative-Identifiers">
      	<div class="buttons">
     		<@s.submit cssClass="button" name="save" key="button.save" cssClass="confirm" />
     		<@s.submit cssClass="button" name="cancel" key="button.cancel"/>
      	</div>
      	<div class="clearfix"></div>
  	</div>
    <!-- internal parameters needed by ajaxFileUpload.js - do not remove -->
	  <input id="r" name="r" type="hidden" value="${resource.shortname}" />
    <input id="validate" name="validate" type="hidden" value="false" />
</form>
</div>

<div id="baseItem" class="item clearfix" style="display:none;">
	<div class="right">
      <a id="removeLink" class="removeLink" href="">[ <@s.text name='manage.metadata.removethis'/> <@s.text name='manage.metadata.alternateIdentifiers.item'/> ]</a>
    </div>
	<@input name="alternateIdentifiers" i18nkey="eml.alternateIdentifier" help="i18n"/>
</div>
<img id="baseimg" src="${baseURL}/logo.do?r=${resource.shortname}" style="display:none;"/>
<img id="loadingimg" src="${baseURL}/images/loading_indicator_bar.gif" style="display:none;"/>

<#include "/WEB-INF/pages/inc/footer.ftl">
</#escape>
