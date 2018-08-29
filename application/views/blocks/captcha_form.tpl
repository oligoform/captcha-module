[{$smarty.block.parent}]

[{assign var="oCaptcha" value=$oView->getCaptcha()}]
<input type="hidden" name="c_mach" value="[{$oCaptcha->getHash()}]"/>

<div class="form-group"> [{*olg20180829*}]
	  <label class="req control-label col-sm-2">[{oxmultilang ident="VERIFICATION_CODE" suffix="COLON"}]</label>
  <div class="col-sm-2 controls">[{assign var="oCaptcha" value=$oView->getCaptcha()}]
  [{if $oCaptcha->isImageVisible()}]
    <img src="[{$oCaptcha->getImageUrl()}]" alt="">
  [{else}]
    <span class="verificationCode" id="verifyTextCode">[{$oCaptcha->getText()}]</span>
  [{/if}]
  </div>

<div class="col-sm-8 controls">  <input type="text" data-fieldsize="verify" name="c_mac" value="" class="form-control js-oxValidate js-oxValidate_notEmpty" required="required">
	<div class="oxValidateError help-block">
    <span class="js-oxError_notEmpty">[{oxmultilang ident="ERROR_MESSAGE_INPUT_NOTALLFIELDS"}]</span>
</div>
</div>  

</div>
