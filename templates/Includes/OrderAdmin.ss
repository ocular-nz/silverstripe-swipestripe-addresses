<div class="sws">

	<table class="table table-bordered">
		<tr>
			<th><% if IsStandingOrder %>
					Standing Order
				<% else %>
					Order
				<% end_if %> 
				#$ID - 
				<% if IsConfirmedStandingOrder %>
					<% if Enabled %>
						Active
					<% else %>
						Paused
					<% end_if %>
				<% else %>
					$Status
				<% end_if %>
				
			</th>
		</tr>
		<tr>
			<td>
				$OrderedOn.Format(d MMM y - h:mm a)<br />
				<% if IsStandingOrder %>
					Billing ID: <% if Member.WindcaveBillingId %>$Member.WindcaveBillingId<% else %>Not found<% end_if %><br />
				<% else %>
					$PaymentStatus<br />
				<% end_if %>
				Product substitutions: <% if $Substitute %>$Substitute<% else %>Not indicated, check updates<% end_if %><br />
				Notes: $Notes
			</td>
		</tr>
	</table>
	
	<% include OrderAddresses %>
	
	<% include Order %>
		
	<% if Payments %>
		<% include OrderPayments %>
	<% end_if %>
	
	<% if Downloads %>
		<% include OrderDownloads %>
	<% end_if %>
	
	<% if CustomerUpdates || Notes %>
		<% include OrderNotes %>
	<% end_if %>

</div>