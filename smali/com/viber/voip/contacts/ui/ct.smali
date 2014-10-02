.class public Lcom/viber/voip/contacts/ui/ct;
.super Lcom/viber/voip/contacts/ui/cb;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/viber/voip/contacts/ui/co;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/contacts/ui/cb;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/viber/voip/contacts/ui/co;)V

    .line 19
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    const v7, 0x7f0c06ae

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_4

    .line 73
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ct;->a:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f0c06a9

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 80
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_5

    .line 81
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ct;->a:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f0c06ab

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 88
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_6

    .line 89
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ct;->a:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f0c06ad

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_2
    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 96
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_7

    .line 97
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ct;->a:Landroid/support/v4/app/FragmentActivity;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v7, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 119
    :goto_4
    return-void

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ct;->a:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f0c06a8

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ct;->a:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f0c06aa

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ct;->a:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f0c06ac

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 99
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ct;->a:Landroid/support/v4/app/FragmentActivity;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v7, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 106
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 108
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ct;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    const v2, 0x7f0c06a7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 110
    const v1, 0x7f0c02b5

    new-instance v2, Lcom/viber/voip/contacts/ui/cu;

    invoke-direct {v2, p0, p5}, Lcom/viber/voip/contacts/ui/cu;-><init>(Lcom/viber/voip/contacts/ui/ct;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_4
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/util/List;Ljava/util/Map;ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/controller/GroupController$GroupMember;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ct;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 123
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    .line 124
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ct;->b:Ljava/util/Map;

    iget-object v3, v0, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v3, v3, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    new-instance v4, Lcom/viber/voip/contacts/ui/cv;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v0, v0, Lcom/viber/jni/GroupUserInfo;->clientName:Ljava/lang/String;

    invoke-direct {v4, p0, v0}, Lcom/viber/voip/contacts/ui/cv;-><init>(Lcom/viber/voip/contacts/ui/ct;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/viber/voip/contacts/ui/ct;->a(Landroid/app/Activity;Ljava/util/Map;ZLandroid/content/DialogInterface$OnClickListener;)V

    .line 127
    return-void
.end method

.method protected a(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ct;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/contacts/ui/cn;

    invoke-virtual {v2}, Lcom/viber/voip/contacts/ui/cn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, v2

    .line 42
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/contacts/ui/cn;

    iget-boolean v2, v2, Lcom/viber/voip/contacts/ui/cn;->c:Z

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/contacts/ui/cn;

    invoke-virtual {v2}, Lcom/viber/voip/contacts/ui/cn;->a()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_1

    .line 49
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    :goto_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 51
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    .line 54
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    :goto_5
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 56
    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5

    .line 59
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    :goto_7
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 61
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_7

    :cond_8
    move-object v0, p0

    move-object v5, p5

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/ct;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface$OnClickListener;)V

    .line 66
    return-void
.end method

.method protected a(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 22
    if-eqz p2, :cond_1

    .line 23
    if-eqz p3, :cond_0

    .line 24
    const/4 v0, -0x1

    invoke-interface {p3, v2, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ct;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/viber/voip/contacts/ui/cn;

    invoke-virtual {v3}, Lcom/viber/voip/contacts/ui/cn;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 30
    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/ui/cn;

    iget-boolean v0, v0, Lcom/viber/voip/contacts/ui/cn;->c:Z

    if-nez v0, :cond_2

    .line 31
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 29
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/viber/voip/contacts/ui/cn;

    invoke-virtual {v3}, Lcom/viber/voip/contacts/ui/cn;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, p3

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/ct;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
