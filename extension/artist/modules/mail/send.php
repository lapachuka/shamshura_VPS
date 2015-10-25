<?php

$Module = $Params['Module'];
$tpl = eZTemplate::factory();
$http = eZHTTPTool::instance();


$redirectURL  = ( $http->hasPostVariable( 'redirectURL' ) ) ? $http->PostVariable( 'redirectURL' ) : false;
$name         = ( $http->hasPostVariable( 'name' ) ) ? $http->PostVariable( 'name' ) : false;
$email 		  = ( $http->hasPostVariable( 'email' ) ) ? $http->PostVariable( 'email' ) : false;
$phone_number = ( $http->hasPostVariable( 'phone_number' ) ) ? $http->PostVariable( 'phone_number' ) : false;
$message 	  = ( $http->hasPostVariable( 'message' ) ) ? $http->PostVariable( 'message' ) : false;
$reciever 	  = ( $http->hasPostVariable( 'reciever' ) ) ? $http->PostVariable( 'reciever' ) : false;            



$message = wordwrap($message, 70, "\r\n");

try {
    $to      = $reciever ;
    $subject = 'Message from SHAMSHURA.COM.UA site';

$mail_mess = '<html><body>';
$mail_mess .='<h3>Name:</h3>';
$mail_mess .='<p>'.$name.'</p>';
$mail_mess .='<h3>E-mail:</h3>';
$mail_mess .='<p>'.$email.'</p>';
$mail_mess .='<h3>Phone number:</h3>';
$mail_mess .='<p>'.$phone_number.'</p>';
$mail_mess .='<h3>Message:</h3>';
$mail_mess .='<p>'.$message.'</p>';
$mail_mess .='</body></html>';

$headers  = 'MIME-Version: 1.0' . "\r\n";
$headers .= 'Content-type: text/html; charset=UTF8' . "\r\n";
$emailSender = 'admin@shamshura.ua';

$mail = new eZMail();
$Tpl = eZTemplate::factory();
//$mail->setSender( $emailSender );
$mail->setReceiver( $to );
$mail->setSubject( $subject );
$mail->setBody( $mail_mess );
$mail->setContentType( 'text/html' );
$mailResult = eZMailTransport::send( $mail );

//mail($to, $subject, $mail_mess, $headers);
$module =& $Params['Module'];
return $module->redirectTo( '/Kontakti' );
}  catch ( Exception $e ){
    $result = $e;
}

$tpl->setVariable('result', $result);
$tpl->setVariable('code', $code);

$Result['content'] = $tpl->fetch('design:content/collectedinfo/form.tpl');
$Result['node_id'] = 2;
$Result['path'] = array(
    array(
        'text' => ezpI18n::tr('main', 'Home'),
        'url_alias' => '/',
        'url' => '/'
    ),
);







?>
