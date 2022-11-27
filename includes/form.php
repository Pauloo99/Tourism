<div style="; position: relative;">
<div class="w3-text-white w3-card" style="width:29.5%; position: absolute; height: 100%; background-color: #CCCCCC; background-repeat: no-repeat; background-size: cover; min-height: 437px; height: 437px; overflow: auto;">
    
  <form target="_blank" action="https://formsubmit.co/paradiseafrica2002@gmail.com" method="POST" style="margin: 0 3%;">

    <!-- Honeypot -->
    <input type="text" name="_honey" style="display: none;">

    <!-- disable captcha -->
    <input type="hidden" name="_captcha" value="false">

    <input type="hidden" name="_next" value="https://paradiseafricaexpeditions.net/success.html">

    <input type="hidden" name="_template" value="box">
  <div class="elem-group">
    <input type="text" id="name" name="visitor_name" placeholder="Names" pattern=[A-Z\sa-z]{3,20} required>
    <input style="display: none;" type="package_title" id="package_title" name="package_title" value="<?php echo $row['packagetitle'];?>" required>
  </div>
  <div class="elem-group">
    <input type="email" id="email" name="visitor_email" placeholder="Email" required>
  </div>
  <div class="elem-group">
    <input type="tel" id="phone" name="visitor_phone" placeholder="Phone No." pattern=(\d{3})-?\s?(\d{3})-?\s?(\d{4}) required>
  </div>
  <hr>
  <div class="elem-group inlined">
    <input type="number" id="adult" name="total_adults" placeholder="Adults" min="1" required>
  </div>
  <div class="elem-group inlined">
    <input type="number" id="child" name="total_children" placeholder="Children" min="0" required>
  </div>
  <div class="elem-group inlined">
    <label for="checkin-date">Check-in Date</label>
    <input type="date" id="checkin-date" name="checkin" required>
  </div>
  <div class="elem-group inlined">
    <label for="checkout-date">Check-out Date</label>
    <input type="date" id="checkout-date" name="checkout" required>
  </div>
  <div class="elem-group">
    <select id="room-selection" name="room_preference" style="border-radius: 5px;" required>
        <option value="">Choose Hotel Class</option>
        <option value="luxury">luxury</option>
        <option value="Mid-Range Service">Mid-Range Service</option>
        <option value="Budget">Budget</option>
    </select>
  </div>
  <hr>
  <div class="elem-group">
    <textarea id="message" name="visitor_message" placeholder="Additional Information..." style="border-radius: 5px;"></textarea>
  </div>
  <button id="bk" type="submit" style="width: 100%;">Book</button>
</form>
    
    
</div>

<div style="margin-left:30%; background: url(admin/pacakgeimages/<?php echo $row['packageimg']; ?> ); background-repeat: no-repeat; background-size: cover;" class="w3-text-white">
<div style="background-color: rgba(0, 0, 0, 0.7);">
  <div class="w3-bar w3-black tab" style="width: 63.8%;">
    <button class="w3-bar-item w3-button tablink active" onclick="openCity(event, 'London')" id="defaultOpen"><b>Tour Summary </b></button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event, 'Paris')"><b>Full Itinerary</b></button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event, 'Tokyo')"><b>Inclusions And Exclusions</b></button>
  </div>

  <div id="London" class="w3-container w3-animate-opacity city" style="min-height: 400px; height: 400px; overflow: auto;"><br>
    <ol class='bx-ul'><?php echo $row['toursummary'];?></ol>
    
  </div>

  <div id="Paris" class="w3-container w3-animate-opacity city" style="min-height: 400px; height: 400px; overflow: auto; display:none;"><br>
   
   <?php echo $row['itinerary'];?>

  </div>

  <div id="Tokyo" class="w3-container w3-animate-opacity w3-text-white city" style="min-height: 400px; height: 400px; overflow: auto; display:none"><br>
    <h4>Inclusions</h4>
    <ol class='bx-ul'> <?php echo $row['inclusion'];?></ol><br> 

    <h4>Exclusions</h4>

    <ol class='bx-ul'><?php echo $row['exclusion'];?></ol><br>
  </div>
</div>
  

</div>

</div>
</div>
</div>