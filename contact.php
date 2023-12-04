 <!-- Map Column -->
            <div class="col-md-8">
 School Location
                <!-- Embedded Google Map -->
                <!-- <iframe width="100%" height="400px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed/v1/place?q=green%20valley%20%20General%20Paulino%20Santos%20Drive%2C%20Koronadal%20City%2C%209506%20South%20Cotabato%2C%20Philippines"></iframe> -->
           <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
           <div style="overflow:hidden;height:400px;width:100%;"><div id="gmap_canvas" style="height:100%;width:400px;">
           <style>#gmap_canvas img{max-width:none!important;background:none!important}</style>
           <a class="google-map-code" href="http://www.map-embed.com" id="get-map-data">embed google map</a>
           </div>
           <script type="text/javascript">
            function init_map(){var myOptions = {zoom:19,center:new google.maps.LatLng(14.754681666841439, 121.03091668350824),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(14.754681666841439, 121.03091668350824)});infowindow = new google.maps.InfoWindow({content:"<b>Q23J+R9M, Congressional Rd Ext, Barangay 171, Caloocan, Metro Manila</b><br>1400  Philippines" });google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
</div>
            </div>
            <!-- Contact Details Column -->
            <div class="col-md-4">
                <h3>Contact Details</h3>
                <p>
                    University of Caloocan City | North
                <br>1400 Congressional Rd Ext, Novaliches, Caloocan, Metro Manila, Philippines<br>
                </p>
                <p><i class="fa fa-phone"></i> 
                    <abbr title="Phone">P</abbr>: +632-3106581 / +632-3106855</p>
                <p><i class="fa fa-envelope-o"></i> 
                    <abbr title="Email">Email</abbr>: <a href="mailto:admin@ucc-caloocan.edu.ph">admin@ucc-caloocan.edu.ph</a>
                </p>
            </div>

 