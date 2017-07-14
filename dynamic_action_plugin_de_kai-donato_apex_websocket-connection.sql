set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.0.00.45'
,p_default_workspace_id=>1860525588927849
,p_default_application_id=>100
,p_default_owner=>'PM2_WORKSPACE'
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/dynamic_action/de_kai_donato_apex_websocket_connection
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(27287683872659316101)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'DE.KAI-DONATO.APEX.WEBSOCKET-CONNECTION'
,p_display_name=>'WebSocket-Plugin'
,p_category=>'EXECUTE'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function start_websocket_connection (',
'    p_dynamic_action in apex_plugin.t_dynamic_action,',
'    p_plugin         in apex_plugin.t_plugin )',
'    return apex_plugin.t_dynamic_action_render_result',
'is',
'    ',
'    l_result apex_plugin.t_dynamic_action_render_result;',
'begin',
'    ',
'    ',
'     apex_javascript.add_library (',
'        p_name      => ''websocket_plugin'',',
'        p_directory => p_plugin.file_prefix,',
'        p_version   => null );',
'        ',
'    l_result.javascript_function := ''de_kai_donato_apex_openwebsocket'';',
'    ',
'',
'    l_result.attribute_01        :=  p_dynamic_action.attribute_01;',
'    l_result.attribute_02        :=  p_dynamic_action.attribute_02;',
'    l_result.attribute_03        :=  p_dynamic_action.attribute_03;',
'',
'    return l_result;',
'end start_websocket_connection;',
'',
''))
,p_api_version=>1
,p_render_function=>'start_websocket_connection'
,p_standard_attributes=>'ITEM:BUTTON:REGION:JQUERY_SELECTOR:TRIGGERING_ELEMENT:EVENT_SOURCE:REQUIRED'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>29
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(27287685388292558997)
,p_plugin_id=>wwv_flow_api.id(27287683872659316101)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'WebSocket-Port'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'20000'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_examples=>'20000'
,p_help_text=>'Enter a Port on which the WebSocket-Server is listening'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(27287687494510586483)
,p_plugin_id=>wwv_flow_api.id(27287683872659316101)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>5
,p_prompt=>'WebSocket-Host'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'ws(s)://'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_help_text=>'Set HOST'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(27496516913312340039)
,p_plugin_id=>wwv_flow_api.id(27287683872659316101)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Debug?'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'0'
,p_supported_ui_types=>'DESKTOP'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(27496518362264341292)
,p_plugin_attribute_id=>wwv_flow_api.id(27496516913312340039)
,p_display_sequence=>10
,p_display_value=>'Yes'
,p_return_value=>'1'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(27496521958374342627)
,p_plugin_attribute_id=>wwv_flow_api.id(27496516913312340039)
,p_display_sequence=>20
,p_display_value=>'No'
,p_return_value=>'0'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(28005194773170053615)
,p_plugin_id=>wwv_flow_api.id(27287683872659316101)
,p_name=>'websocket_message'
,p_display_name=>'WebSocket Message'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2F20412064796E616D696320616374696F6E20706C75672D696E2066756E6374696F6E2063616E2061636365737320697427732063757272656E7420636F6E7465787420776974682074686520227468697322206F626A6563742E0A2F2F2049742063';
wwv_flow_api.g_varchar2_table(2) := '6F6E7461696E7320666F72206578616D706C652022616374696F6E222077686963682073746F726573207468652064796E616D69632061747472696275746573206174747269627574653031202D20617474726962757465313020616E640A2F2F207468';
wwv_flow_api.g_varchar2_table(3) := '6520616A61784964656E746966696572207573656420666F722074686520414A41582063616C6C2E20496E73696465207468652066756E6374696F6E20796F752063616E207573650A2F2F2022746869732E6166666563746564456C656D656E74732220';
wwv_flow_api.g_varchar2_table(4) := '746F206765742061206A5175657279206F626A65637420776869636820636F6E7461696E7320616C6C207468652061666665637465640A2F2F20444F4D20656C656D656E7473206F75722064796E616D696320616374696F6E2073686F756C6420626520';
wwv_flow_api.g_varchar2_table(5) := '706572666F726D6564206F6E2E0A2F2F0A2F2F20466F722064796E616D696320616374696F6E20706C75672D696E2066756E6374696F6E7320796F752073686F756C642075736520612066756E6374696F6E206E616D652077686963682069730A2F2F20';
wwv_flow_api.g_varchar2_table(6) := '756E697175652C20736F20697420646F65736E27742067657420696E20636F6E666C6963742077697468206578697374696E672066756E6374696F6E732E20426573742070726163746973650A2F2F20697320746F20757365207468652073616D65206E';
wwv_flow_api.g_varchar2_table(7) := '616D65206173207573656420666F722074686520706C75672D696E20696E7465726E616C206E616D652E0A0A66756E6374696F6E2064655F6B61695F646F6E61746F5F617065785F6F70656E776562736F636B65742829207B0A0A20202020766172206C';
wwv_flow_api.g_varchar2_table(8) := '776562736F636B65745F646573745F686F7374203D20746869732E616374696F6E2E61747472696275746530323B0A20202020766172206C776562736F636B65745F646573745F706F7274203D20746869732E616374696F6E2E61747472696275746530';
wwv_flow_api.g_varchar2_table(9) := '313B0A20202020766172206C776562736F636B65745F64656275675F6D6F6465203D20746869732E616374696F6E2E61747472696275746530333B0A20202020766172206166666563746564456C656D656E7473203D20746869732E6166666563746564';
wwv_flow_api.g_varchar2_table(10) := '456C656D656E74733B0A202020207661722075726C203D206C776562736F636B65745F646573745F686F7374202B20273A27202B206C776562736F636B65745F646573745F706F72743B0A0A2020202066756E6374696F6E206C6F67676572286C6F675F';
wwv_flow_api.g_varchar2_table(11) := '6D65737361676529207B0A2020202020202020696620286C776562736F636B65745F64656275675F6D6F6465203D3D203129207B0A202020202020202020202020636F6E736F6C652E6465627567286C6F675F6D657373616765293B0A20202020202020';
wwv_flow_api.g_varchar2_table(12) := '207D0A202020207D0A0A0A0A202020206C6F676765722827576562536F636B65742D44657374696E6174696F6E3A2027202B206C776562736F636B65745F646573745F686F7374293B0A202020206C6F676765722827576562536F636B65742D506F7274';
wwv_flow_api.g_varchar2_table(13) := '3A2027202B206C776562736F636B65745F646573745F706F7274293B0A202020206C6F67676572282746756C6C20436F6E6E656374696F6E20537472696E673A2027202B206C776562736F636B65745F646573745F686F7374202B20273A27202B206C77';
wwv_flow_api.g_varchar2_table(14) := '6562736F636B65745F646573745F706F7274293B0A0A0A0A0A2020202077696E646F772E576562536F636B6574203D2077696E646F772E576562536F636B6574207C7C2077696E646F772E4D6F7A576562536F636B65743B0A0A20202020776562736F63';
wwv_flow_api.g_varchar2_table(15) := '6B65745F636F6E6E656374696F6E203D206E657720576562536F636B65742875726C293B0A0A20202020776562736F636B65745F636F6E6E656374696F6E2E6F6E6F70656E203D2066756E6374696F6E2829207B0A20202020202020206C6F6767657228';
wwv_flow_api.g_varchar2_table(16) := '27576562536F636B6574202D20436F6E6E656374696F6E2065737461626C69736865642127293B0A20202020202020206C6F67676572286166666563746564456C656D656E7473293B0A202020207D3B0A0A20202020776562736F636B65745F636F6E6E';
wwv_flow_api.g_varchar2_table(17) := '656374696F6E2E6F6E6572726F72203D2066756E6374696F6E286572726F7229207B0A20202020202020206C6F676765722827576562536F636B6574202D20436F6E6E656374696F6E206661696C7572652127293B0A202020207D3B0A0A202020207765';
wwv_flow_api.g_varchar2_table(18) := '62736F636B65745F636F6E6E656374696F6E2E6F6E65636C6F7365203D2066756E6374696F6E28726561736F6E29207B0A20202020202020206C6F676765722827576562536F636B6574202D20436F6E6E656374696F6E20636C6F7365642127293B0A20';
wwv_flow_api.g_varchar2_table(19) := '2020207D3B0A0A20202020776562736F636B65745F636F6E6E656374696F6E2E6F6E6D657373616765203D2066756E6374696F6E286D65737361676529207B0A2020202020202020617065782E6576656E742E7472696767657228646F63756D656E742C';
wwv_flow_api.g_varchar2_table(20) := '2022776562736F636B65745F6D657373616765222C206D657373616765293B0A20202020202020206C6F67676572286D657373616765293B0A202020207D3B0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(30216239971531156998)
,p_plugin_id=>wwv_flow_api.id(27287683872659316101)
,p_file_name=>'websocket_plugin.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
