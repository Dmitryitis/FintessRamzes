<div class="footer">
    <div class="footer_items">
        <a class="footer_items-item" href="#" data-toggle="modal" data-target="#policy">Политика конфиденциальности</a>
    </div>
    <div class="footer_items">
        <a class="footer_items-item" data-toggle="modal" data-target="#feedback" href="#">Написать нам</a>
        <a href="#">Сообщить об ошибке</a>
    </div>
    <div class="footer_items">
        <span class="footer_items-item">Где мы находимся:</span>
        <span>г. Казань, ул. Кремлевская д.35</span>
    </div>
</div>


<div class="modal fade" id="feedback" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="comment_mod_home">
                    <label for="comment"><span class="text_mode_home">КОММЕНТАРИЙ</span></label>
                    <textarea class="aria_home" type="" placeholder="Введите комментарий" name="comment"
                              id="comment"
                              required>
                                </textarea>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <form action="#feedback" method="post">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Save changes
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="policy" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <#include "policy.ftl">
            </div>
        </div>
    </div>
</div>