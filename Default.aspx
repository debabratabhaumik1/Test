<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.5/angular.min.js"></script>
<link rel="stylesheet" runat="server" media="screen" href="~/Content/Test.css" />
<script type="text/javascript" src="Scripts/Test.js"></script>
<div ng-app="myApp">
  <h2>Shopping Cart <img class="logo" src="http://vectorlogo4u.com/wp-content/uploads/2016/05/angular-icon-vector-150x150.png" alt="" /></h2>
  <div ng:controller="CartForm" class="mycontainer">
    <table class="table">
      <tr>
        <th>Description</th>
        <th>Quantity</th>
        <th>Cost</th>
        <th>Discount (%)</th>
        <th>Total</th>
        <th>Remove</th>
        <th>Include?</th>
      </tr>
      <tr ng-repeat="item in invoice.items">
        <td><input type="text" ng-model="item.description" class="input-small" placeholder="items name"></td>
        <td><input type="number" ng-model="item.qty" ng-required class="input-mini"></td>
        <td><input type="number" ng-model="item.cost" ng-required class="input-mini"></td>
        <td><input type="number" ng-model="item.discount" ng-required class="input-mini"></td>
        <!--   <td>{{item.tax}}%</td>      -->
        <td>{{(item.qty * item.cost) * (1 - item.discount/100) | currency}}</td>
        <td>
          <a href ng-click="removeItem($index)"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
        </td>
        <td><input type="checkbox" ng-model="item.checked"></td>
      </tr>
      <tr>
        <td><a class="btn btn-info btn-sm btn-block" href ng-click="addItem()">add new item</a></td>
        <td colspan="6"></td>
      </tr>
      <tr class="row-total">
        <td colspan="4"></td>
        <td>Total:</td>
        <td>{{total() | currency}}</td>
      </tr>
    </table>
  </div>
 <%-- <div class="author">Made with ♥ by <a href="https://dankoknad.github.io/" target="_blank">Danko</a></div>--%>
    <%--https://codepen.io/_danko/pen/yJRzVd--%>
</div>