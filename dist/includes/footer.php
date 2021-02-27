<script src="../dist/js/date_time.js"></script>           
<footer class="main-footer" style="text-align:center">
        <strong>Copyright &copy; iTrust 2020 <a href="">Hypermarket Manag. System</a>.</strong> All rights reserved.
        <b><span id="date_time" class="pull-right"></span></b>
        <script type="text/javascript">window.onload = date_time('date_time');</script>
        
</footer>
<footer class="main-footer" style="text-align:center">
        <?php
        $file ="quote.txt";
        $quotes = file($file);
        srand ((double)microtime()*1000000);
        $randomquote = rand(0,count($quotes)-1);
        echo "<b> $quotes[$randomquote]</b>";
        ?>    
</footer>

