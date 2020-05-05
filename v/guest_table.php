<div>
    <h1>Гостевая книга</h1>
</div>
<div>
    <form enctype="multipart/form-data" method="post" action="">
        <table id="form_table">
            <tr>
                <td class="title">Дата</td>
                <td class="value">
                    <input type="date" class="value" name="dtime" value="<?=$dtime?>">
                </td>
            </tr>
            <tr>
                <td class="title">Имя</td>
                <td class="value">
                    <input class="value" name="name" value="<?=$name?>">
                </td>
            </tr>
            <tr>
                <td class="title">Информация</td>
                <td class="value">
                    <textarea name="body" id="body"><?=$body?></textarea>
                </td>
            </tr>
            <td colspan="2" align="right" id="submit">
                <input type="submit" id="add_guest" value="Добавить гостя">
            </td>
        </table>
    </form>
</div>

<div class="msg"><?=$msg?></div>

<br>

<div>
    <table id="object_table">
        <thead>
        <tr class="title">
            <th>Дата</th>
            <th>Имя гостя</th>
            <th>Информация</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($guest as $value){?>
            <tr>
                <td><?=date("d.m.Y", strtotime($value['dtime']))?></td>
                <td><?=$value['name']?></td>
                <td><?=$value["body"]?></td>
            </tr>
        <?php }?>
        </tbody>
    </table>
</div>
