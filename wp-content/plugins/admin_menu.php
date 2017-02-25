<?php

/**
 * @package Admin menu
 * @version 3.6
 */
/*
  Plugin Name:Admin Menu Management
  Plugin URI: http://wordpress.org/extend/plugins/hello-dolly/
  Description: This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong: Hello, Dolly. When activated you will randomly see a lyric from <cite>Hello, Dolly</cite> in the upper right of your admin screen on every page.
  Author: Shib Shnakar Maji
  Version: 3.6
  Author URI: http://ma.tt/
 */

function adminForMenu() {

    // Add a new top-level menu (ill-advised):
    add_menu_page(__('Site Manage', 'menu-test'), __('Site Manage', 'menu-test'), 'manage_options', 'mt-top-level-handle', 'mt_toplevel_page');

    // Add a submenu to the custom top-level menu:
    //add_submenu_page('mt-top-level-handle', 'Manage Main Slider', 'Slider Manage', 'manage_options', 'add_slider', 'add_slider');

    /* View slider manage */
    add_submenu_page('mt-top-level-handle', 'View Slider Manage', 'View Slider Manage', 'manage_options', 'viewslidermanage', 'viewslidermanage');

    /* View feature section */
    add_submenu_page('mt-top-level-handle', 'View Feature Section', 'View Feature Section', 'manage_options', 'viewFeature', 'viewFeature');

    /* View offer section */
    add_submenu_page('mt-top-level-handle', 'View Offer Section', 'View Offer Section', 'manage_options', 'viewOffersection', 'viewOffersection');

    /* View offer section */
    add_submenu_page('mt-top-level-handle', 'Add Brands', 'Add Brands', 'manage_options', 'add_brands', 'add_brands');

    /* View offer section */
    add_submenu_page('mt-top-level-handle', 'View Brands', 'View Brands', 'manage_options', 'view_brands', 'view_brands');

    /* View offer section */
    add_submenu_page('mt-top-level-handle', 'View Footer Section', 'View Footer Section', 'manage_options', 'viewfootersection', 'viewfootersection');

    /* View offer section */
    add_submenu_page('mt-top-level-handle', 'Shop page Advertisement', 'Shop page Advertisement', 'manage_options', 'view_advertisement', 'view_advertisement');
}

function mt_toplevel_page() {
    echo "Manage";
}

function add_slider() {
    global $wpdb;
    $upload_dir = wp_upload_dir();
    $upload_url_alt = ( $upload_dir['baseurl'] . $upload_dir['subdir'] );

    if ($_POST['slider_save']) {

        $slider_array = array(
            'image_text_above' => $_POST['sli_text1'],
            'image_text_below' => $_POST['sli_text2'],
            'slider_text_above' => $_POST['sli_text3'],
            'slider_text_below' => $_POST['sli_text4']
        );

        if (isset($_FILES['slider_image']) && ($_FILES['slider_image']['size'] > 0)) {
            $arr_file_type = wp_check_filetype(basename($_FILES['slider_image']['name']));
            $uploaded_file_type = $arr_file_type['type'];
            $allowed_file_types = array('image/jpg', 'image/jpeg', 'image/gif', 'image/png');
            if (in_array($uploaded_file_type, $allowed_file_types)) {
                $upload_overrides = array('test_form' => false);
                $uploaded_file = wp_handle_upload($_FILES['slider_image'], $upload_overrides);
            } else { // wrong file type
                $upload_feedback = 'Please upload only .jpg/.png/.gif files.';
            }
            $slider_array['image'] = str_replace(' ', '-', $_FILES['slider_image']['name']);
        }

        $success = $wpdb->insert('wp_banner', $slider_array, array(
            '%s', '%s', '%s', '%s', '%s'
        ));

        show_notice("Slider Successfully Inserted.");
    }
    echo '<h2 style = "margin-top: 80px;">Add HomePage Slider Image</h2>
	<FORM METHOD=POST ACTION="" enctype="multipart/form-data">
	<TABLE>
	<TR>
		<TD>Add Slider Image</TD>
		<TD><input type="file" NAME="slider_image" style="width:400px;" required></TD>
	</TR>
        <TR>
		<TD>Image Text Above:</TD>
		<TD><INPUT TYPE="text" NAME="sli_text1"></TD>
	</TR>
        <TR>
		<TD>Image Text Below:</TD>
		<TD><INPUT TYPE="text" NAME="sli_text2"></TD>
	</TR>
        <TR>
		<TD>Slider Text Above:</TD>
		<TD><INPUT TYPE="text" NAME="sli_text3"></TD>
	</TR>
        <TR>
		<TD>Slider Text Below:</TD>
		<TD><INPUT TYPE="text" NAME="sli_text4"></TD>
	</TR>
	<TR>		
		<TD><INPUT TYPE="submit" name="slider_save" VALUE = "Insert Slider "></TD>
	</TR>
	</TABLE>
	
	</FORM>
	
	';
}

function viewslidermanage() {
    global $wpdb;
    $upload_dir = wp_upload_dir();
    $upload_url_alt = ( $upload_dir['baseurl'] . $upload_dir['subdir'] );

    if (isset($_POST['slider_save'])) {

        $slider_update = array(
            'image_text_above' => $_POST['sli_text1'],
            'image_text_below' => $_POST['sli_text2'],
            'slider_text_above' => $_POST['sli_text3'],
            'slider_text_below' => $_POST['sli_text4']
        );

        if (isset($_FILES['slider_image']) && ($_FILES['slider_image']['size'] > 0)) {
            $arr_file_type = wp_check_filetype(basename($_FILES['slider_image']['name']));
            $uploaded_file_type = $arr_file_type['type'];
            $allowed_file_types = array('image/jpg', 'image/jpeg', 'image/gif', 'image/png');
            if (in_array($uploaded_file_type, $allowed_file_types)) {
                $upload_overrides = array('test_form' => false);
                $uploaded_file = wp_handle_upload($_FILES['slider_image'], $upload_overrides);
            } else { // wrong file type
                $upload_feedback = 'Please upload only .jpg/.png/.gif files.';
            }
            $slider_update['image'] = str_replace(' ', '-', $_FILES['slider_image']['name']);
        }

        $sql = "update wp_banner set image_text_above = '" . $slider_update['image_text_above'] . "',image_text_below='" . $slider_update['image_text_below'] . "',slider_text_above='" . $slider_update['slider_text_above'] . "',slider_text_below='" . $slider_update['slider_text_below'] . "'";

        if (!empty($_FILES['slider_image']['name'])) {
            $sql.= " ,image='" . $slider_update['image'] . "'";
        }
        $sql.= "where id=" . $_POST['slider_id'];


        $result = $wpdb->query($sql);

        show_notice("Slider Image Updated Successfully.");
    }

    $fetch_banners = $wpdb->get_results("SELECT * from wp_banner where 1", ARRAY_A);


    echo '<h2 style="text-align:center;font-size:30px" >ALL SLIDER</h2>';
    if (!empty($fetch_banners)) {
        echo '<center><table border="5">'
        . '<tr style="color:white;background:black ">'
        . '<th>Serial No.</th>'
        . '<th>Slider Image</th>'
        . '<th>Image Text Above:</th>'
        . '<th>Image Text Below:</th>'
        . '<th>Slider Text Above:</th>'
        . '<th>Slider Text Below:</th>'
        . '<th>Action</th>'
        . '</tr>';
        $serial_no = 1;
        foreach ($fetch_banners as $fetch_banner) {
            echo '<form action="" method="POST">'
            . '<tr>'
            . '<td>' . $serial_no . '</td>'
            . '<td><img src="' . $upload_url_alt . '/' . $fetch_banner['image'] . '" width="100px" height="100px"></td>'
            . '<td>' . $fetch_banner['image_text_above'] . '</td>'
            . '<td>' . $fetch_banner['image_text_below'] . '</td>'
            . '<td>' . $fetch_banner['slider_text_above'] . '</td>'
            . '<td>' . $fetch_banner['slider_text_below'] . '</td>'
            . '<td>'
            . '<input type="hidden" name="slider_banner_id" value="' . $fetch_banner['id'] . '"/>'
            . '<input type="submit" name="SLIDEREDIT" value="Edit"/>'
            . '</tr> ';
            echo '</form>';
            $serial_no++;
        }

        echo '</table></center>';
    }

    if (isset($_POST['SLIDEREDIT'])) {

        $slider_fetch_edit = $wpdb->get_results("SELECT * from wp_banner where id= " . $_POST['slider_banner_id'], ARRAY_A);

        echo '<h2 style = "margin-top: 80px;">Update Slider</h2>
	<FORM METHOD="POST" ACTION="" enctype="multipart/form-data">
	<TABLE>
	<TR>
            <TD>Add Slider Image</TD>image
            <TD><input type="file" NAME="slider_image" style="width:400px;" ></TD>
	</TR>
        <TR style="float:right;margin-right:-71px">
        <TD><img src="' . $upload_url_alt . '/' . $slider_fetch_edit[0]['image'] . '" width="50px" height="50px"></TD>
        </TR>
        <TR>
		<TD>Image Text Above:</TD>
		<TD><INPUT TYPE="text" NAME="sli_text1" value="' . $slider_fetch_edit[0]['image_text_above'] . '" ></TD>
	</TR>
        <TR>
		<TD>Image Text Below:</TD>
		<TD><INPUT TYPE="text" NAME="sli_text2" value="' . $slider_fetch_edit[0]['image_text_below'] . '" ></TD>
	</TR>
        <TR>
		<TD>Slider Text Above:</TD>
		<TD><INPUT TYPE="text" NAME="sli_text3" value="' . $slider_fetch_edit[0]['slider_text_above'] . '" ></TD>
	</TR>
        <TR>
		<TD>Slider Text Below:</TD>
		<TD><INPUT TYPE="text" NAME="sli_text4" value="' . $slider_fetch_edit[0]['slider_text_below'] . '" ></TD>
	</TR>
	<TR>	
               <TD><input type="hidden" name="slider_id" value="' . $slider_fetch_edit[0]['id'] . '"/></TD>
	
		<TD><INPUT TYPE="submit" name="slider_save" VALUE = "Update Slider"></TD>
	</TR>
	</TABLE>
	
	</FORM>';
    }
}

function viewFeature() {

    global $wpdb;
    $upload_dir = wp_upload_dir();
    $upload_url_alt = ( $upload_dir['baseurl'] . $upload_dir['subdir'] );

    if (isset($_POST['feature_save'])) {

        $feature_update = array(
            'feature_text' => $_POST['sli_text1']
        );

        if (isset($_FILES['feature_image']) && ($_FILES['feature_image']['size'] > 0)) {
            $arr_file_type = wp_check_filetype(basename($_FILES['feature_image']['name']));
            $uploaded_file_type = $arr_file_type['type'];
            $allowed_file_types = array('image/jpg', 'image/jpeg', 'image/gif', 'image/png');
            if (in_array($uploaded_file_type, $allowed_file_types)) {
                $upload_overrides = array('test_form' => false);
                $uploaded_file = wp_handle_upload($_FILES['feature_image'], $upload_overrides);
            } else { // wrong file type
                $upload_feedback = 'Please upload only .jpg/.png/.gif files.';
            }
            $feature_update['feature_logo'] = str_replace(' ', '-', $_FILES['feature_image']['name']);
        }

        $sql = "update wp_feature set feature_text = '" . $feature_update['feature_text'] . "'";
        if (!empty($_FILES['feature_image']['name'])) {
            $sql.= " ,feature_logo='" . $feature_update['feature_logo'] . "'";
        }
        $sql.= "where id=" . $_POST['feature_id'];
        $result = $wpdb->query($sql);

        show_notice("Feature Updated Successfully.");
    }

    $fetch_features = $wpdb->get_results("SELECT * from wp_feature where 1", ARRAY_A);


    echo '<h2 style="text-align:center;font-size:30px" >Feature Section</h2>';
    if (!empty($fetch_features)) {
        echo '<center><table border="5">'
        . '<tr style="color:white;background:black ">'
        . '<th>Serial No.</th>'
        . '<th>Feature Image</th>'
        . '<th>Feature Text:</th>'
        . '<th>Action</th>'
        . '</tr>';
        $serial_no = 1;
        foreach ($fetch_features as $fetch_feature) {
            echo '<form action="" method="POST">'
            . '<tr>'
            . '<td>' . $serial_no . '</td>'
            . '<td><img src="' . $upload_url_alt . '/' . $fetch_feature['feature_logo'] . '" width="100px" height="100px"></td>'
            . '<td>' . $fetch_feature['feature_text'] . '</td>'
            . '<td>'
            . '<input type="hidden" name="feature_banner_id" value="' . $fetch_feature['id'] . '"/>'
            . '<input type="submit" name="FEATUREEDIT" value="Edit"/>'
            . '</td>'
            . '</tr> ';
            echo '</form>';
            $serial_no++;
        }

        echo '</table></center>';
    }

    if (isset($_POST['FEATUREEDIT'])) {

        $feature_fetch_edit = $wpdb->get_results("SELECT * from wp_feature where id= " . $_POST['feature_banner_id'], ARRAY_A);

        echo '<h2 style = "margin-top: 80px;">Update Feature</h2>
	<FORM METHOD="POST" ACTION="" enctype="multipart/form-data">
	<TABLE>
	<TR>
            <TD>Add Feature Image</TD>image
            <TD><input type="file" NAME="feature_image" style="width:400px;" ></TD>
	</TR>
        <TR style="float:right;margin-right:-71px">
        <TD><img src="' . $upload_url_alt . '/' . $feature_fetch_edit[0]['feature_logo'] . '" width="50px" height="50px"></TD>
        </TR>
        <TR>
		<TD>Add Feature Text:</TD>
		<TD><INPUT TYPE="text" NAME="sli_text1" value="' . $feature_fetch_edit[0]['feature_text'] . '" ></TD>
	</TR>        
	<TR>	
               <TD><input type="hidden" name="feature_id" value="' . $feature_fetch_edit[0]['id'] . '"/></TD>
	
		<TD><INPUT TYPE="submit" name="feature_save" VALUE = "Update Feature"></TD>
	</TR>
	</TABLE>
	
	</FORM>';
    }
}

function viewOffersection() {

    global $wpdb;
    $upload_dir = wp_upload_dir();
    $upload_url_alt = ( $upload_dir['baseurl'] . $upload_dir['subdir'] );

    if (isset($_POST['offer_save'])) {

        $offer_update = array(
            'offer_text1' => $_POST['sli_text1'],
            'offer_text2' => $_POST['sli_text2']
        );

        if (isset($_FILES['offer_image']) && ($_FILES['offer_image']['size'] > 0)) {
            $arr_file_type = wp_check_filetype(basename($_FILES['offer_image']['name']));
            $uploaded_file_type = $arr_file_type['type'];
            $allowed_file_types = array('image/jpg', 'image/jpeg', 'image/gif', 'image/png');
            if (in_array($uploaded_file_type, $allowed_file_types)) {
                $upload_overrides = array('test_form' => false);
                $uploaded_file = wp_handle_upload($_FILES['offer_image'], $upload_overrides);
            } else { // wrong file type
                $upload_feedback = 'Please upload only .jpg/.png/.gif files.';
            }
            $offer_update['offer_image'] = str_replace(' ', '-', $_FILES['offer_image']['name']);
        }

        $sql = "update wp_offer set offer_text1 = '" . $offer_update['offer_text1'] . "',offer_text2 = '" . $offer_update['offer_text2'] . "'";
        if (!empty($_FILES['offer_image']['name'])) {
            $sql.= " ,offer_image='" . $offer_update['offer_image'] . "'";
        }
        $sql.= "where id=" . $_POST['offer_id'];
        $result = $wpdb->query($sql);

        show_notice("Offer Section Updated Successfully.");
    }

    $fetch_offers = $wpdb->get_results("SELECT * from wp_offer where 1", ARRAY_A);


    echo '<h2 style="text-align:center;font-size:30px" >All Offer Images</h2>';
    if (!empty($fetch_offers)) {
        echo '<center><table border="5">'
        . '<tr style="color:white;background:black ">'
        . '<th>Serial No.</th>'
        . ' <th>Position :</th>'
        . '<th>Offer Image: </th>'
        . '<th>Offer :</th>'
        . '<th>Category :</th>'
        . '<th>Action</th>'
        . '</tr>';
        $serial_no = 1;
        foreach ($fetch_offers as $fetch_offer) {
            echo '<form action="" method="POST">'
            . '<tr>'
            . '<td>' . $serial_no . '</td>'
            . '<td>' . $fetch_offer['position'] . '</td>'
            . '<td><img src="' . $upload_url_alt . '/' . $fetch_offer['offer_image'] . '" width="100px" height="100px"></td>'
            . '<td>' . $fetch_offer['offer_text1'] . '</td>'
            . '<td>' . $fetch_offer['offer_text2'] . '</td>'
            . '<td>'
            . '<input type="hidden" name="fetch_offer_id" value="' . $fetch_offer['id'] . '"/>'
            . '<input type="submit" name="OFFEREDIT" value="Edit"/>'
            . '</td>'
            . '</tr> ';
            echo '</form>';
            $serial_no++;
        }

        echo '</table></center>';
    }

    if (isset($_POST['OFFEREDIT'])) {

        $offer_fetch_edit = $wpdb->get_results("SELECT * from wp_offer where id= " . $_POST['fetch_offer_id'], ARRAY_A);

        echo '<h2 style = "margin-top: 80px;">Update Offer Section</h2>
	<FORM METHOD="POST" ACTION="" enctype="multipart/form-data">
	<TABLE>
	<TR>
            <TD>Add ' . $offer_fetch_edit[0]['position'] . '</TD>image
            <TD><input type="file" NAME="offer_image" style="width:400px;" ></TD>
	</TR>
        <TR style="float:right;margin-right:-71px">
        <TD><img src="' . $upload_url_alt . '/' . $offer_fetch_edit[0]['offer_image'] . '" width="50px" height="50px"></TD>
        </TR>
        <TR>
		<TD>Add Offer:</TD>
		<TD><INPUT TYPE="text" NAME="sli_text1" value="' . $offer_fetch_edit[0]['offer_text1'] . '" ></TD>
	</TR> 
        <TR>
		<TD>Add Category:</TD>
		<TD><INPUT TYPE="text" NAME="sli_text2" value="' . $offer_fetch_edit[0]['offer_text2'] . '" ></TD>
	</TR> 
	<TR>	
               <TD><input type="hidden" name="offer_id" value="' . $offer_fetch_edit[0]['id'] . '"/></TD>
	
		<TD><INPUT TYPE="submit" name="offer_save" VALUE = "Update Feature"></TD>
	</TR>
	</TABLE>
	
	</FORM>';
    }
}

function add_brands() {
    global $wpdb;
    $upload_dir = wp_upload_dir();
    $upload_url_alt = ( $upload_dir['baseurl'] . $upload_dir['subdir'] );

    if ($_POST['brand_save']) {

        $brand_array = array(
        );

        if (isset($_FILES['brand_image']) && ($_FILES['brand_image']['size'] > 0)) {
            $arr_file_type = wp_check_filetype(basename($_FILES['brand_image']['name']));
            $uploaded_file_type = $arr_file_type['type'];
            $allowed_file_types = array('image/jpg', 'image/jpeg', 'image/gif', 'image/png');
            if (in_array($uploaded_file_type, $allowed_file_types)) {
                $upload_overrides = array('test_form' => false);
                $uploaded_file = wp_handle_upload($_FILES['brand_image'], $upload_overrides);
            } else { // wrong file type
                $upload_feedback = 'Please upload only .jpg/.png/.gif files.';
            }
            $brand_array['brand_logo'] = str_replace(' ', '-', $_FILES['brand_image']['name']);
        }

        $success = $wpdb->insert('wp_brands', $brand_array, array(
            '%s', '%s'
        ));

        show_notice("Brands Successfully Inserted.");
    }
    echo '<h2 style = "margin:100px 31px 26px 535px;">Add Brand Images</h2>
	<FORM METHOD=POST ACTION="" enctype="multipart/form-data">
	<TABLE border="5" style="margin:0px auto">
	<TR>
		<TD>Add Brand Image</TD>
		<TD><input type="file" NAME="brand_image" style="width:400px;" required></TD>
	</TR>        
	<TR>		
		<TD><INPUT TYPE="submit" name="brand_save" VALUE = "Insert Brands"></TD>
	</TR>
	</TABLE>
	
	</FORM>
	
	';
}

function view_brands() {

    global $wpdb;
    $upload_dir = wp_upload_dir();
    $upload_url_alt = ( $upload_dir['baseurl'] . $upload_dir['subdir'] );


    /* delete Brands */
    if (isset($_POST['BRANDDELETE'])) {
        $brand_id = $_POST['brand_id'];
        $delete_query = "delete from wp_brands where id=" . $brand_id;
        $result = $wpdb->query($delete_query);
        show_notice("Brands deleted Successfully.");
    }



    $fetch_brands = $wpdb->get_results("SELECT * from wp_brands where 1", ARRAY_A);


    echo '<h2 style="text-align:center;font-size:30px" >Brand Section</h2>';
    if (!empty($fetch_brands)) {
        echo '<center><table border="5">'
        . '<tr style="color:white;background:black ">'
        . '<th>Serial No.</th>'
        . '<th>Brands Image</th>'
        . '<th>Action</th>'
        . '</tr>';
        $serial_no = 1;
        foreach ($fetch_brands as $fetch_brand) {
            echo '<form action="" method="POST">'
            . '<tr>'
            . '<td>' . $serial_no . '</td>'
            . '<td><img src="' . $upload_url_alt . '/' . $fetch_brand['brand_logo'] . '" width="100px" height="100px"></td>' . '<td>'
            . '<input type="hidden" name="brand_id" value="' . $fetch_brand['id'] . '"/>'
            . '<input type="submit" name="BRANDDELETE" value="delete"/>'
            . '</td>'
            . '</tr> ';
            echo '</form>';
            $serial_no++;
        }

        echo '</table></center>';
    }
}

function viewfootersection() {
    global $wpdb;
    $upload_dir = wp_upload_dir();
    $upload_url_alt = ( $upload_dir['baseurl'] . $upload_dir['subdir'] );

    if (isset($_POST['footer_save'])) {

        $footer_update = array(
            'office_address' => $_POST['sli_text1'],
            'contact' => $_POST['sli_text2'],
            'contact_info1' => $_POST['sli_text3'],
            'contact_info2' => $_POST['sli_text4'],
            'contact_info3' => $_POST['sli_text5'],
            'about_section' => $_POST['sli_text6']
        );

        $sql = "update wp_footer set office_address = '" . $footer_update['office_address'] . "',contact='" . $footer_update['contact'] . "',contact_info1='" . $footer_update['contact_info1'] . "',contact_info2='" . $footer_update['contact_info2'] . "',contact_info3='" . $footer_update['contact_info3'] . "',about_section='" . $footer_update['about_section'] . "'";
        $sql.= "where id=" . $_POST['footer_section_id'];
        $result = $wpdb->query($sql);

        show_notice("Footer Section Updated Successfully.");
    }

    $fetch_footers = $wpdb->get_results("SELECT * from wp_footer where 1", ARRAY_A);


    echo '<h2 style="text-align:center;font-size:30px" >Footer Section</h2>';
    if (!empty($fetch_footers)) {
        echo '<center><table border="5">'
        . '<tr style="color:white;background:black ">'
        . '<th>Serial No.</th>'
        . '<th>Office Address</th>'
        . '<th>CONTACT</th>'
        . '<th>Contact Info1</th>'
        . '<th>Contact Info2</th>'
        . '<th>Contact Info3</th>'
        . '<th>About</th>'
        . '<th>Action</th>'
        . '</tr>';
        $serial_no = 1;
        foreach ($fetch_footers as $fetch_footer) {
            echo '<form action="" method="POST">'
            . '<tr>'
            . '<td>' . $serial_no . '</td>'
            . '<td>' . $fetch_footer['office_address'] . '</td>'
            . '<td>' . $fetch_footer['contact'] . '</td>'
            . '<td>' . $fetch_footer['contact_info1'] . '</td>'
            . '<td>' . $fetch_footer['contact_info2'] . '</td>'
            . '<td>' . $fetch_footer['contact_info3'] . '</td>'
            . '<td>' . $fetch_footer['about_section'] . '</td>'
            . '<td>'
            . '<input type="hidden" name="footer_id" value="' . $fetch_footer['id'] . '"/>'
            . '<input type="submit" name="FOOTEREDIT" value="Edit"/></td>'
            . '</tr> ';
            echo '</form>';
            $serial_no++;
        }

        echo '</table></center>';
    }

    if (isset($_POST['FOOTEREDIT'])) {

        $footer_fetch_edit = $wpdb->get_results("SELECT * from wp_footer where id= " . $_POST['footer_id'], ARRAY_A);

        echo '<h2 style = "margin-top: 80px;">Update Footer</h2>
	<FORM METHOD="POST" ACTION="" enctype="multipart/form-data">
	<TABLE>
	<TR>
                <TD>Office Address</TD>image
                <TD><input type="text" NAME="sli_text1" value="' . $footer_fetch_edit[0]['office_address'] . '" ></TD>
        </TR>        
        <TR>
		<TD>CONTACT</TD>
		<TD><INPUT TYPE="text" NAME="sli_text2" value="' . $footer_fetch_edit[0]['contact'] . '" ></TD>
	</TR>
        <TR>
		<TD>Contact Info1</TD>
		<TD><INPUT TYPE="text" NAME="sli_text3" value="' . $footer_fetch_edit[0]['contact_info1'] . '" ></TD>
	</TR>
        <TR>
		<TD>Contact Info2</TD>
		<TD><INPUT TYPE="text" NAME="sli_text4" value="' . $footer_fetch_edit[0]['contact_info2'] . '" ></TD>
	</TR>
        <TR>
		<TD>Contact Info3</TD>
		<TD><INPUT TYPE="text" NAME="sli_text5" value="' . $footer_fetch_edit[0]['contact_info3'] . '" ></TD>
	</TR>
        <TR>
		<TD>About</TD>
		<TD><INPUT TYPE="text" NAME="sli_text6" value="' . $footer_fetch_edit[0]['about_section'] . '" ></TD>
	</TR>
	<TR>	
               <TD><input type="hidden" name="footer_section_id" value="' . $footer_fetch_edit[0]['id'] . '"/></TD>	
		<TD><INPUT TYPE="submit" name="footer_save" VALUE = "Update Footer"></TD>
	</TR>
	</TABLE>
	
	</FORM>';
    }
}

function view_advertisement() {

    global $wpdb;
    $upload_dir = wp_upload_dir();
    $upload_url_alt = ( $upload_dir['baseurl'] . $upload_dir['subdir'] );


    if (isset($_POST['ad_save'])) {     

        $offer_update = array(
            'ad_name' => $_POST['sli_text1']
        );

        if (isset($_FILES['adv_image']) && ($_FILES['adv_image']['size'] > 0)) {
            $arr_file_type = wp_check_filetype(basename($_FILES['adv_image']['name']));
            $uploaded_file_type = $arr_file_type['type'];
            $allowed_file_types = array('image/jpg', 'image/jpeg', 'image/gif', 'image/png');
            if (in_array($uploaded_file_type, $allowed_file_types)) {
                $upload_overrides = array('test_form' => false);
                $uploaded_file = wp_handle_upload($_FILES['adv_image'], $upload_overrides);
            } else { // wrong file type
                $upload_feedback = 'Please upload only .jpg/.png/.gif files.';
            }
            $offer_update['ad_image'] = str_replace(' ', '-', $_FILES['adv_image']['name']);
        }

        $sql = "update wp_advertise set ad_name = '" . $offer_update['ad_name'] . "'";
        if (!empty($_FILES['adv_image']['name'])) {
            $sql.= " ,ad_image='" . $offer_update['ad_image'] . "'";
        }
        $sql.= "where id=" . $_POST['ad_id'];
        $result = $wpdb->query($sql);

        show_notice("Advertise Section Updated Successfully.");
    }
        
    $fetch_brands = $wpdb->get_results("SELECT * from wp_advertise where 1", ARRAY_A);


    echo '<h2 style="text-align:center;font-size:30px" >Advertise Section</h2>';
    if (!empty($fetch_brands)) {
        echo '<center><table border="5">'
        . '<tr style="color:white;background:black ">'
        . '<th>Serial No.</th>'
        . '<th>Advertise Name</th>'
        . '<th>Advertise Image</th>'
        . '<th>Action</th>'
        . '</tr>';
        $serial_no = 1;
        foreach ($fetch_brands as $fetch_brand) {
            echo '<form action="" method="POST">'
            . '<tr>'
            . '<td>' . $serial_no . '</td>'
            . '<td>' . $fetch_brand['ad_name'] . '</td>'
            . '<td><img src="' . $upload_url_alt . '/' . $fetch_brand['ad_image'] . '" width="100px" height="100px"></td>' . '<td>'
            . '<input type="hidden" name="brand_id" value="' . $fetch_brand['id'] . '"/>'
            . '<input type="submit" name="adEdit" value="Edit"/>'
            . '</td>'
            . '</tr> ';
            echo '</form>';
            $serial_no++;
        }

        echo '</table></center>';
    }
    if (isset($_POST['adEdit'])) {

        $advertise_fetch_edit = $wpdb->get_results("SELECT * from wp_advertise where id= " . $_POST['brand_id'], ARRAY_A);

        echo '<h2 style = "margin-top: 80px;">Update Advertisement</h2>
	<FORM METHOD="POST" ACTION="" enctype="multipart/form-data">
	<TABLE>
        <TR> 
            <TD>Ad Image</TD>
            <TD><input type="file" NAME="adv_image" style="width:400px;" ></TD>
	</TR>
        <TR style="float:right;margin-right:-71px">
        <TD><img src="' . $upload_url_alt . '/' . $advertise_fetch_edit[0]['ad_image'] . '" width="50px" height="50px"></TD>
        </TR>    
        <TR>
		<TD>Ad Name</TD>
		<TD><INPUT TYPE="text" NAME="sli_text1" value="' . $advertise_fetch_edit[0]['ad_name'] . '" ></TD>
	</TR>        
	<TR>	
               <TD><input type="hidden" name="ad_id" value="' . $advertise_fetch_edit[0]['id'] . '"/></TD>	
		<TD><INPUT TYPE="submit" name="ad_save" VALUE = "Update Advertisement"></TD>
	</TR>
	</TABLE>
	
	</FORM>';
    }
}

function show_notice($str) {
    print '<DIV STYLE = "position:absolute; top: 15px; border:1px solid blue; width:90%; background:#CCFFFF;padding:10px; ">' . $str . '</DIV>';
}

add_action('admin_menu', 'adminForMenu');
?>
