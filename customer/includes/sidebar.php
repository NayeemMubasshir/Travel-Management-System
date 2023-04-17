<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>

    <li class="submenu"> <a href="#"><i class="fas fa-plane-departure"></i> <span>Travel Contents</span> <span class="label label-important"></span></a>
    <ul>
        <li class="<?php if($page=='list-travellocation'){ echo 'active'; }?>"><a href="travellocation.php"><i class="fas fa-arrow-right"></i> List travellocation</a></li>
        <li class="<?php if($page=='update-travellocation'){ echo 'active'; }?>"><a href="booktravellocation.php"><i class="fas fa-arrow-right"></i> Booking Details</a></li>
        
      </ul>
    </li>

   
    

    

    <li class="<?php if($page=='travelevent'){ echo 'active'; }?>"><a href="travelevent.php"><i class=""></i> <span>travelevent</span></a></li>

    <li class="<?php if($page=='report'){ echo 'active'; }?>"><a href="my-report.php"><i class=""></i> <span>Reports</span></a></li>


    <li class="submenu"> <a href="#"><i class="fas fa-users"></i> <span>Manage Members</span></a>
      <ul>
        <li class="<?php if($page=='members'){ echo 'active'; }?>"><a href="members.php"><i class="fas fa-arrow-right"></i> List All Members</a></li>
        
        
        <li class="<?php if($page=='members-update'){ echo 'active'; }?>"><a href="edit-member.php"><i class="fas fa-arrow-right"></i> Update Member Details</a></li>
      </ul>
    </li>

    

    

    <li class="<?php if($page=='faqandsupp'){ echo 'active'; }?>"> <a href="faqandsupp.php"><i class=""></i> <span>Travel FAQ</span></a>


    

    </li>



  </ul>
</div>