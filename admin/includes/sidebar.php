<div id="sidebar"><a href="#" class="visible-phone"><i class="fas fa-home"></i> Dashboard</a>
  <ul>
    <li class="<?php if($page=='dashboard'){ echo 'active'; }?>"><a href="index.php"><i class=""></i> <span>Dashboard</span></a> </li>
    <li class="submenu"> <a href="#"><i class="fas fa-users"></i> <span>Manage Members</span> <?php include 'anotherconn.php';?></a>
      <ul>
        <li class="<?php if($page=='members'){ echo 'active'; }?>"><a href="members.php"><i class="fas fa-arrow-right"></i> List All Members</a></li>
        <li class="<?php if($page=='members-entry'){ echo 'active'; }?>"><a href="member-entry.php"><i class="fas fa-arrow-right"></i> Member Entry Form</a></li>
        <li class="<?php if($page=='members-remove'){ echo 'active'; }?>"><a href="remove-member.php"><i class="fas fa-arrow-right"></i> Remove Member</a></li>
        <li class="<?php if($page=='members-update'){ echo 'active'; }?>"><a href="edit-member.php"><i class="fas fa-arrow-right"></i> Update Member Details</a></li>
      </ul>
    </li>

    <li class="submenu"> <a href="#"><i class="fas fa-plane-departure"></i> <span>Travel Content</span> <span class="label label-important"></span></a>

    <ul>
        <li class="<?php if($page=='list-equip'){ echo 'active'; }?>"><a href="travellocation.php"><i class="fas fa-arrow-right"></i> List travellocation</a></li>
        <li class="<?php if($page=='add-equip'){ echo 'active'; }?>"><a href="travellocationentry.php"><i class="fas fa-arrow-right"></i> Add travellocation</a></li>
        <li class="<?php if($page=='remove-equip'){ echo 'active'; }?>"><a href="removetravellocation.php"><i class="fas fa-arrow-right"></i> Remove travellocation</a></li>
        <li class="<?php if($page=='update-equip'){ echo 'active'; }?>"><a href="edittravellocation.php"><i class="fas fa-arrow-right"></i> Update travellocation Details</a></li>
      </ul>
    </li>


    
    

    
    <li class="<?php if($page=='travelevent'){ echo 'active'; }?>"><a href="travelevent.php"><i class="fas fa-bullhorn"></i> <span>travelevent</span></a></li>
    
    <li class="<?php if($page=='staff-management'){ echo 'active'; }?>"><a href="staffs.php"><i class="fas fa-briefcase"></i> <span>Staff Management</span></a></li>
    

     
   
   
  </ul>
</div>