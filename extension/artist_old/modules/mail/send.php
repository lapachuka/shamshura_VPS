<?php

$Module = $Params['Module'];
$tpl = eZTemplate::factory();
$http = eZHTTPTool::instance();


$redirectURL  = ( $http->hasPostVariable( 'redirectURL' ) ) ? $http->PostVariable( 'redirectURL' ) : false;
$name         = ( $http->hasPostVariable( 'name' ) ) ? $http->PostVariable( 'name' ) : false;
$email 		  = ( $http->hasPostVariable( 'email' ) ) ? $http->PostVariable( 'email' ) : false;
$phone_number = ( $http->hasPostVariable( 'phone_number' ) ) ? $http->PostVariable( 'phone_number' ) : false;
$message 	  = ( $http->hasPostVariable( 'message' ) ) ? $http->PostVariable( 'message' ) : false;
            



$message = wordwrap($message, 70, "\r\n");

try {
    $to      = 'polyglot.ua@gmail.com';
    $subject = 'Message from Polyglot site';

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
$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
$emailSender = 'admin@fanat-sc.com.ua';

$mail = new eZMail();
$Tpl = eZTemplate::factory();
$subject = 'Email from Fanat site';
//$mail->setSender( $emailSender );
$mail->setReceiver( 'ol@nxc.no' );
$mail->setSubject( $subject );
$mail->setBody( $mail_mess );
$mail->setContentType( 'text/html' );
$mailResult = eZMailTransport::send( $mail );

//mail($to, $subject, $mail_mess, $headers);
$module =& $Params['Module'];
return $module->redirectTo( '/Kontakt' );
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
