.class public Lcom/viber/voip/util/gn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JJLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 871
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VIEW_MEDIA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 872
    const-string/jumbo v1, "thread_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 873
    const-string/jumbo v1, "msg_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 874
    const-string/jumbo v1, "screen_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    const-string/jumbo v1, "prev_action"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    return-object v0
.end method

.method public static a(JJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 426
    const/4 v0, 0x0

    const/4 v9, 0x0

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lcom/viber/voip/util/gn;->a(ZJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z[Lcom/viber/voip/calls/entities/CallEntity;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 512
    invoke-static/range {p0 .. p10}, Lcom/viber/voip/util/gn;->b(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z[Lcom/viber/voip/calls/entities/CallEntity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    const/4 v4, 0x0

    .line 421
    move-wide v2, v0

    move-object v5, v4

    move-object v6, v4

    move-object v7, p0

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/viber/voip/util/gn;->a(JJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;Z[Lcom/viber/voip/calls/entities/CallEntity;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 487
    invoke-static {p0, p1, p2}, Lcom/viber/voip/util/gn;->b(Ljava/lang/String;Z[Lcom/viber/voip/calls/entities/CallEntity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(ZJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 431
    const/4 v9, 0x0

    move v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lcom/viber/voip/util/gn;->a(ZJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(ZJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 437
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 439
    if-eqz p0, :cond_0

    const-string/jumbo v0, "com.viber.voip.action.VIEW_CONTACT_DIALOG"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string/jumbo v0, "contact_id"

    invoke-virtual {v1, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 441
    const-string/jumbo v0, "native_contact_id"

    invoke-virtual {v1, v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 442
    const-string/jumbo v0, "lookup_key"

    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string/jumbo v0, "name"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const-string/jumbo v0, "photo_uri"

    invoke-virtual {v1, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 445
    const-string/jumbo v0, "con_number"

    invoke-virtual {v1, v0, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string/jumbo v0, "viber_number"

    invoke-virtual {v1, v0, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string/jumbo v0, "prev_action"

    invoke-virtual {v1, v0, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    return-object v1

    .line 439
    :cond_0
    const-string/jumbo v0, "com.viber.voip.action.VIEW_CONTACT"

    goto :goto_0
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 476
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 477
    if-eqz p0, :cond_0

    const-string/jumbo v0, "com.viber.voip.action.VIEW_CONTACT_DIALOG"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string/jumbo v0, "con_number"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const-string/jumbo v0, "is_viber"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 480
    const-string/jumbo v0, "photo_uri"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 481
    const-string/jumbo v0, "name"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string/jumbo v0, "prev_action"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    return-object v1

    .line 477
    :cond_0
    const-string/jumbo v0, "com.viber.voip.action.VIEW_CONTACT"

    goto :goto_0
.end method

.method private static a(ILandroid/app/Activity;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 750
    new-instance v0, Lcom/viber/voip/util/gt;

    invoke-direct {v0, p1, p0}, Lcom/viber/voip/util/gt;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 756
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 554
    invoke-static/range {p1 .. p7}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 555
    const-string/jumbo v1, "send_1to1"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 556
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 557
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 903
    invoke-static {p0, p1, p2, v0, v0}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;JZZ)V

    .line 904
    return-void
.end method

.method public static a(Landroid/content/Context;JIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 805
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->aj()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->ak()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v12, 0x1

    .line 808
    :goto_0
    if-eqz v12, :cond_2

    .line 810
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getGMapsFactory()Lcom/viber/dexshared/GMaps$Factory;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/dexshared/GMaps$Factory;->initialize(Landroid/content/Context;)V

    .line 811
    const-class v0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lcom/viber/voip/util/gn;->a(Ljava/lang/Class;Landroid/content/Context;JIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/viber/dexshared/GMaps$NotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v12

    .line 819
    :goto_1
    if-nez v0, :cond_0

    .line 821
    :try_start_1
    const-class v0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lcom/viber/voip/util/gn;->a(Ljava/lang/Class;Landroid/content/Context;JIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2

    .line 826
    :cond_0
    :goto_2
    return-void

    .line 805
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 812
    :catch_0
    move-exception v0

    .line 813
    const/4 v0, 0x0

    .line 816
    goto :goto_1

    .line 814
    :catch_1
    move-exception v0

    .line 815
    const/4 v0, 0x0

    goto :goto_1

    .line 822
    :catch_2
    move-exception v0

    .line 823
    const-class v0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lcom/viber/voip/util/gn;->a(Ljava/lang/Class;Landroid/content/Context;JIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_2
    move v0, v12

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 880
    invoke-static/range {p1 .. p6}, Lcom/viber/voip/util/gn;->a(JJLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 881
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 882
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 884
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 885
    return-void
.end method

.method public static a(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 417
    const/4 v0, 0x0

    const/4 v8, 0x0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/viber/voip/util/gn;->a(ZJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 418
    return-void
.end method

.method public static a(Landroid/content/Context;JZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 899
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;JZZ)V

    .line 900
    return-void
.end method

.method private static a(Landroid/content/Context;JZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 911
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.MESSAGE_CHAT_HEADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 912
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 913
    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 914
    const-string/jumbo v1, "pop_to_chat_head"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 915
    const-string/jumbo v1, "from_message_fragment"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 916
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 917
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Lcom/viber/voip/a/k;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 680
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "NeverShowAgainGSM"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 682
    if-nez v0, :cond_1

    .line 683
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 684
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 685
    new-instance v3, Lcom/viber/voip/util/gs;

    invoke-direct {v3, v2, p0, p1, p2}, Lcom/viber/voip/util/gs;-><init>(Landroid/app/AlertDialog;Landroid/content/Context;Landroid/content/Intent;Lcom/viber/voip/a/k;)V

    .line 708
    const v0, 0x7f07023c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 709
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    const v4, 0x7f0c02b6

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 712
    const v0, 0x7f07023d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 713
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    const v4, 0x7f0c02ae

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 716
    const v0, 0x7f07023e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 717
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    const v3, 0x7f0c0379

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 720
    const v0, 0x7f070122

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 721
    const v1, 0x7f0c0378

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 723
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 724
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 727
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {p2}, Lcom/viber/voip/a/k;->c()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;ZLcom/viber/voip/a/k;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 568
    const-string/jumbo v0, "com.viber.voip.action.CALL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    if-nez p1, :cond_2

    .line 572
    invoke-static {}, Lcom/viber/voip/util/gn;->e()V

    goto :goto_0

    .line 577
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->isGsmSupported()Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "android.intent.action.CALL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "android.intent.action.SENDTO"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 579
    :cond_3
    const v0, 0x7f0c039d

    const v1, 0x7f0c039e

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    const/4 v1, 0x6

    const-string/jumbo v2, "ViberActionRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No activity found for intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 668
    invoke-static {}, Lcom/viber/voip/util/gn;->e()V

    goto :goto_0

    .line 582
    :cond_4
    :try_start_1
    const-string/jumbo v0, "android.intent.action.CALL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 583
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 585
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/viberout/e;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 586
    new-instance v1, Lcom/viber/voip/billing/ae;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/viber/voip/billing/ae;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-static {v1, p2}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/billing/ae;Z)V

    goto/16 :goto_0

    .line 589
    :cond_5
    new-instance v0, Lcom/viber/voip/util/go;

    invoke-direct {v0, p0, p1, p3}, Lcom/viber/voip/util/go;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/viber/voip/a/k;)V

    .line 599
    if-eqz p2, :cond_6

    .line 600
    invoke-static {p0, p1, p3}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/viber/voip/a/k;)V

    goto/16 :goto_0

    .line 602
    :cond_6
    invoke-static {}, Lcom/viber/voip/util/gn;->a()Z

    move-result v1

    if-nez v1, :cond_7

    .line 603
    const/4 v1, -0x1

    const v2, 0x7f0c0380

    new-instance v3, Lcom/viber/voip/util/gp;

    invoke-direct {v3, v0}, Lcom/viber/voip/util/gp;-><init>(Ljava/lang/Runnable;)V

    const/4 v4, 0x0

    const v5, 0x7f0c02ae

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILcom/viber/voip/util/az;Ljava/lang/Runnable;IZ)Landroid/content/DialogInterface;

    goto/16 :goto_0

    .line 613
    :cond_7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 617
    :cond_8
    const-string/jumbo v0, "android.intent.action.SENDTO"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    if-eqz p2, :cond_a

    const-string/jumbo v0, "smsto"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 620
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "327"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 622
    const/4 v1, -0x1

    const v2, 0x7f0c0385

    new-instance v3, Lcom/viber/voip/util/gq;

    invoke-direct {v3, p0, p1, p3}, Lcom/viber/voip/util/gq;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/viber/voip/a/k;)V

    const/4 v4, 0x0

    const v5, 0x7f0c02ae

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILcom/viber/voip/util/az;Ljava/lang/Runnable;IZ)Landroid/content/DialogInterface;

    goto/16 :goto_0

    .line 634
    :cond_a
    const-string/jumbo v0, "android.intent.action.SENDTO"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    if-nez p2, :cond_d

    const-string/jumbo v0, "smsto"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 636
    invoke-static {}, Lcom/viber/voip/util/gn;->c()Z

    move-result v0

    if-nez v0, :cond_c

    .line 637
    const/4 v1, -0x1

    const v2, 0x7f0c0388

    new-instance v3, Lcom/viber/voip/util/gr;

    invoke-direct {v3, p0, p1, p3}, Lcom/viber/voip/util/gr;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/viber/voip/a/k;)V

    const/4 v4, 0x0

    const v5, 0x7f0c02ae

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILcom/viber/voip/util/az;Ljava/lang/Runnable;IZ)Landroid/content/DialogInterface;

    goto/16 :goto_0

    .line 648
    :cond_c
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 649
    if-eqz p3, :cond_0

    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {p3}, Lcom/viber/voip/a/k;->d()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto/16 :goto_0

    .line 651
    :cond_d
    const-string/jumbo v0, "com.viber.voip.action.CALL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "com.viber.voip.action.REDIAL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 652
    :cond_e
    invoke-static {p0, p1}, Lcom/viber/service/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 654
    :cond_f
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 658
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/a/k;

    invoke-direct {v1}, Lcom/viber/voip/a/k;-><init>()V

    invoke-virtual {v1}, Lcom/viber/voip/a/k;->e()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/viber/voip/messages/conversation/a/a/a;ZLjava/lang/String;Z)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 782
    const-string/jumbo v0, ""

    .line 783
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->f()I

    move-result v3

    .line 784
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->g()I

    move-result v4

    .line 785
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->Z()J

    move-result-wide v5

    .line 786
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->D()Ljava/lang/String;

    move-result-object v8

    .line 787
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    :cond_0
    const/4 v8, 0x0

    .line 792
    :cond_1
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v1

    .line 793
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "location"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 794
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0c053a

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    move-object v0, p0

    move-object v9, p3

    move/from16 v10, p4

    .line 801
    invoke-static/range {v0 .. v10}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;JIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 802
    return-void

    .line 794
    :cond_2
    const v0, 0x7f0c053b

    goto :goto_0

    .line 795
    :cond_3
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 796
    const v0, 0x7f0c0431

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 798
    :cond_4
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getBiDiAwareFormatter()Lcom/viber/voip/util/l;

    move-result-object v0

    const v7, 0x7f0c0520

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->W()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/viber/voip/util/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 920
    invoke-static {p1}, Lcom/viber/voip/market/MarketActivity;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 921
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 922
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 561
    invoke-static/range {p1 .. p7}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 562
    const-string/jumbo v1, "send_1to1"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 563
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 564
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 565
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 461
    const/4 v0, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/gn;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 462
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 463
    return-void
.end method

.method public static a(Landroid/content/Context;ZJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 398
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 399
    const/4 v8, 0x0

    move v0, p1

    move-wide v1, p2

    move-wide v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/viber/voip/util/gn;->a(ZJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 406
    :goto_0
    return-void

    .line 401
    :cond_0
    const/4 v8, 0x0

    move v0, p1

    move-wide v1, p2

    move-wide v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/viber/voip/util/gn;->a(ZJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 402
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 403
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CLOSE_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 404
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-static/range {p1 .. p6}, Lcom/viber/voip/util/gn;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 468
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 469
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 470
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CLOSE_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 472
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 473
    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 888
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.SEND_MEDIA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 889
    const-string/jumbo v1, "media_uri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 890
    const-string/jumbo v1, "prev_action"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    const-string/jumbo v1, "camera_image"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    if-eqz p1, :cond_0

    .line 893
    const-string/jumbo v1, "is_public_group"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 895
    :cond_0
    invoke-virtual {p0, v0, p5}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 896
    return-void
.end method

.method private static a(Ljava/lang/Class;Landroid/content/Context;JIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            "JIIJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 854
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 855
    const-string/jumbo v1, "message_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 856
    const-string/jumbo v1, "user_lat"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 857
    const-string/jumbo v1, "user_lng"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 858
    const-string/jumbo v1, "location_date"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 859
    const-string/jumbo v1, "user_name"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 860
    const-string/jumbo v1, "bucket_text"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    const-string/jumbo v1, "show_bucket"

    invoke-virtual {v0, v1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 862
    const-string/jumbo v1, "prev_action"

    invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 863
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 864
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 866
    :cond_0
    invoke-static {v0}, Lcom/viber/voip/util/hy;->a(Landroid/content/Intent;)Landroid/content/Intent;

    .line 867
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 868
    return-void
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 759
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "NeverShowAgain"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 732
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->getCurrentCall()Lcom/viber/voip/phone/call/k;

    move-result-object v2

    .line 733
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/k;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 734
    :goto_0
    if-eqz v2, :cond_0

    .line 735
    const v3, 0x7f0c0382

    invoke-static {v3, p0}, Lcom/viber/voip/util/gn;->a(ILandroid/app/Activity;)V

    .line 737
    :cond_0
    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 733
    goto :goto_0

    :cond_2
    move v0, v1

    .line 737
    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 741
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->getCurrentCall()Lcom/viber/voip/phone/call/k;

    move-result-object v2

    .line 742
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/k;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 743
    :goto_0
    if-eqz v2, :cond_0

    .line 744
    const v3, 0x7f0c0382

    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 746
    :cond_0
    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 742
    goto :goto_0

    :cond_2
    move v0, v1

    .line 746
    goto :goto_1
.end method

.method public static varargs b(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z[Lcom/viber/voip/calls/entities/CallEntity;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 517
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VIEW_CALL_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    const-string/jumbo v1, "con_number"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const-string/jumbo v1, "is_viber"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 520
    const-string/jumbo v1, "photo_uri"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 521
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const-string/jumbo v1, "contact_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 523
    const-string/jumbo v1, "native_contact_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 524
    const-string/jumbo v1, "lookup_key"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string/jumbo v1, "viber_number"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const-string/jumbo v1, "prev_action"

    sget-object v2, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    iget-object v2, v2, Lcom/viber/voip/a/l;->c:Lcom/viber/voip/a/k;

    invoke-virtual {v2}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    if-eqz p10, :cond_0

    array-length v1, p10

    if-lez v1, :cond_0

    .line 528
    const-string/jumbo v1, "call_entities"

    invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 533
    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 829
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->aj()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/viber/voip/settings/j;->ak()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 832
    :goto_0
    if-eqz v0, :cond_1

    .line 834
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getGMapsFactory()Lcom/viber/dexshared/GMaps$Factory;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/viber/dexshared/GMaps$Factory;->initialize(Landroid/content/Context;)V

    .line 835
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Lcom/viber/dexshared/GMaps$NotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2

    .line 849
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 829
    goto :goto_0

    .line 836
    :catch_0
    move-exception v0

    move v0, v1

    .line 843
    :cond_1
    :goto_2
    if-nez v0, :cond_2

    .line 845
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 846
    :catch_1
    move-exception v0

    .line 849
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 838
    :catch_2
    move-exception v0

    move v0, v1

    .line 839
    goto :goto_2
.end method

.method public static varargs b(Ljava/lang/String;Z[Lcom/viber/voip/calls/entities/CallEntity;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 491
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VIEW_CALL_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    const-string/jumbo v1, "con_number"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string/jumbo v1, "is_viber"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 494
    const-string/jumbo v1, "unknown"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 495
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 496
    const-string/jumbo v1, "call_entities"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 501
    :cond_0
    const-string/jumbo v1, "prev_action"

    sget-object v2, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    iget-object v2, v2, Lcom/viber/voip/a/l;->c:Lcom/viber/voip/a/k;

    invoke-virtual {v2}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    return-object v0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 763
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "NeverShowAgain"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 764
    return-void
.end method

.method public static b(Landroid/content/Context;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 907
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;JZZ)V

    .line 908
    return-void
.end method

.method public static c()Z
    .locals 3

    .prologue
    .line 767
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "NeverShowAgainSms"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d()V
    .locals 3

    .prologue
    .line 771
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "NeverShowAgainSms"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 772
    return-void
.end method

.method private static e()V
    .locals 0

    .prologue
    .line 779
    return-void
.end method
