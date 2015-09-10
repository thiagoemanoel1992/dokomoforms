<div class="modal fade modal-user" tabindex="-1" role="dialog" aria-labelledby="<%= data.id ? 'Edit' : 'Add' %> User" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><%= data.id ? 'Edit' : 'Add' %> User</h4>
                </div>
                <div class="modal-body">
                        <div class="form-group">
                            <label for="user-name">Name</label>
                            <input type="text" class="form-control" id="user-name" placeholder="Name" value="<%= data.name %>">
                        </div>
                        <div class="form-group">
                            <label for="user-email">Email</label>
                            <input type="email" class="form-control" id="user-email" placeholder="Email" value="<%= data.emails ? data.emails[0] : '' %>">
                        </div>
                        <div class="form-group">
                            <label for="user-role">Role</label>
                            <select class="form-control" id="user-role">
                                <option <%= (data.role === 'enumerator') ? "selected" : "" %>>enumerator</option>
                                <option <%= (data.role === 'administrator') ? "selected" : "" %>>administrator</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="user-default-lang">Default Language</label>
                            <select class="form-control" id="user-default-lang">
                                <option <%= (data.preferences && data.preferences.default_language === 'English') ? "selected" : "" %>>English</option>
                            </select>
                        </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary btn-save-user">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>
