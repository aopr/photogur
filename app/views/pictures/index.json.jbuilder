<h1>Listing pictures</h1>
<table>
  <thead>
    <tr>
      <th>Title</th>
      <th>Url</th>
      <th colspan="3"></th>
    </th>
  </thead>

  <tbody>
    <% @pictures.each do |picture| %>
      <tr>
        <td><%= picture.title %></td>
        <td><%= image_tag picture.url %></td>
        <td><%= link_to 'Show', picture %></td>
        <td><%= link_to 'Edit', edit_picture_path(picture) %></td>
        <td><%= link_to 'Destroy', picture, method: :delete, data: { confirm: 'Are you sure?' } %></td>
      </tr>
    <% end %>
  </tbody>
</table>

<br>
<%= link_to 'New Picture', new_picture_path %>
