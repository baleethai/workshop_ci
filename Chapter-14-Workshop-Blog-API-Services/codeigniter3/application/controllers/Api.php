<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api extends CI_Controller {

    public function oil()
    {
        $data = array();
        $endpoint = 'http://www.pttplc.com/webservice/pttinfo.asmx?WSDL';
        $client = new SoapClient($endpoint,
            array(
                "trace"      => 1,		// enable trace to view what is happening
                "exceptions" => 0,		// disable exceptions
                "cache_wsdl" => 0
            )
        );

        $params = array(
            'Language' => "en",
            'DD' => date('d'),
            'MM' => date('m'),
            'YYYY' => date('Y')
        );

        $result = $client->GetOilPrice($params);
        $oilPrice = $result->GetOilPriceResult;

        $xml = new SimpleXMLElement($oilPrice);
        $data['oil'] = $xml;

        $this->load->view('api/oil', $data);
    }

	public function index()
    {
        # code...
    }
}
