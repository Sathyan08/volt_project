class WorkspaceController < ModelController
  def index
    self.model = :store
    self._current_user = _users[params._index.to_i]
    # self._current_todo = _todos[params._index.to_i]
  end

  def add_user
    store._users << _new_user.cur
    self._new_user = {}
  end

  def remove_user(user)
    store._users.delete(user)
  end

   private
    # the main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._controller and params._action values.
    def main_path
      params._controller.or('main') + "/" + params._action.or('index')
    end

end
