.class public Lcom/viber/voip/block/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/viber/voip/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/viber/voip/block/i;->a:Ljava/util/Set;

    .line 35
    new-instance v0, Lcom/viber/voip/a/f;

    invoke-direct {v0}, Lcom/viber/voip/a/f;-><init>()V

    sput-object v0, Lcom/viber/voip/block/i;->b:Lcom/viber/voip/a/f;

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/viber/voip/block/i;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 43
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/viber/voip/block/n;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/block/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Lcom/viber/voip/block/n;)V

    .line 55
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/block/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Lcom/viber/voip/block/n;)V

    .line 51
    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Lcom/viber/voip/block/n;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    if-nez p3, :cond_2

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0, p2, p2}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    invoke-static {v0}, Lcom/viber/voip/block/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v0

    .line 70
    :cond_0
    const v2, 0x7f0c0640

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 71
    const v2, 0x7f0c0641

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p1, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 72
    const v2, 0x7f0c02ee

    new-instance v3, Lcom/viber/voip/block/j;

    invoke-direct {v3, v0, p4, p5, p2}, Lcom/viber/voip/block/j;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Lcom/viber/voip/block/n;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    const v0, 0x7f0c02b6

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 97
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v0, p2

    .line 63
    goto :goto_0

    .line 89
    :cond_3
    if-eqz p4, :cond_4

    .line 90
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 92
    :cond_4
    if-eqz p5, :cond_1

    .line 93
    invoke-interface {p5, p2}, Lcom/viber/voip/block/n;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/viber/voip/block/i;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/Set;)V

    .line 198
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Set;Ljava/lang/Runnable;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/viber/voip/block/i;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/Set;Ljava/lang/Runnable;Z)V

    .line 171
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/IBinder;Ljava/lang/Runnable;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/block/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/IBinder;Ljava/lang/Runnable;Lcom/viber/voip/block/n;)V

    .line 59
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/IBinder;Ljava/lang/Runnable;Lcom/viber/voip/block/n;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    if-nez p3, :cond_3

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0, p2, p2}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    invoke-static {v0}, Lcom/viber/voip/block/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x7f0d0135

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v0

    .line 107
    :cond_0
    const v2, 0x7f0c0640

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 108
    const v2, 0x7f0c0641

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p1, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 109
    const v2, 0x7f0c02ee

    new-instance v3, Lcom/viber/voip/block/k;

    invoke-direct {v3, v0, p5, p6, p2}, Lcom/viber/voip/block/k;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Lcom/viber/voip/block/n;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    const v0, 0x7f0c02b6

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 124
    if-eqz p4, :cond_1

    .line 125
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 126
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 127
    iput-object p4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 128
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 130
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 140
    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object v0, p2

    .line 100
    goto :goto_0

    .line 132
    :cond_4
    if-eqz p5, :cond_5

    .line 133
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 135
    :cond_5
    if-eqz p6, :cond_2

    .line 136
    invoke-interface {p6, p2}, Lcom/viber/voip/block/n;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;Ljava/util/Set;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 174
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 178
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0637

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    if-le v4, v7, :cond_2

    :goto_0
    aput-object p1, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/viber/voip/block/m;

    invoke-direct {v1, p2}, Lcom/viber/voip/block/m;-><init>(Ljava/util/Set;)V

    new-instance v2, Lcom/viber/voip/widget/a/e;

    const/4 v3, -0x1

    const v4, 0x7f0c063c

    const-wide/16 v5, 0xfa0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/viber/voip/widget/a/e;-><init>(IIJ)V

    invoke-static {p0, v0, v1, v2}, Lcom/viber/voip/widget/a/a;->a(Landroid/view/View;Ljava/lang/CharSequence;Lcom/viber/voip/widget/a/d;Lcom/viber/voip/widget/a/e;)Lcom/viber/voip/widget/a/a;

    .line 192
    invoke-static {}, Lcom/viber/voip/block/i;->d()Lcom/viber/voip/contacts/c/a/a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/viber/voip/contacts/c/a/a;->b(Ljava/util/Set;)V

    .line 193
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/block/i;->b:Lcom/viber/voip/a/f;

    invoke-virtual {v1}, Lcom/viber/voip/a/f;->e()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 194
    return-void

    .line 179
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0639

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;Ljava/util/Set;Ljava/lang/Runnable;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 143
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 147
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0636

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    if-le v4, v7, :cond_2

    :goto_0
    aput-object p1, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/viber/voip/block/l;

    invoke-direct {v1, p2, p3}, Lcom/viber/voip/block/l;-><init>(Ljava/util/Set;Ljava/lang/Runnable;)V

    new-instance v2, Lcom/viber/voip/widget/a/e;

    const/4 v3, -0x1

    const v4, 0x7f0c0635

    const-wide/16 v5, 0xfa0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/viber/voip/widget/a/e;-><init>(IIJ)V

    invoke-static {p0, v0, v1, v2}, Lcom/viber/voip/widget/a/a;->a(Landroid/view/View;Ljava/lang/CharSequence;Lcom/viber/voip/widget/a/d;Lcom/viber/voip/widget/a/e;)Lcom/viber/voip/widget/a/a;

    .line 165
    invoke-static {}, Lcom/viber/voip/block/i;->d()Lcom/viber/voip/contacts/c/a/a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/viber/voip/contacts/c/a/a;->a(Ljava/util/Set;)V

    .line 166
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    if-eqz p4, :cond_4

    sget-object v0, Lcom/viber/voip/block/i;->b:Lcom/viber/voip/a/f;

    invoke-virtual {v0}, Lcom/viber/voip/a/f;->d()Lcom/viber/voip/a/x;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 167
    return-void

    .line 148
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0639

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v0

    goto :goto_0

    .line 166
    :cond_4
    sget-object v0, Lcom/viber/voip/block/i;->b:Lcom/viber/voip/a/f;

    invoke-virtual {v0}, Lcom/viber/voip/a/f;->c()Lcom/viber/voip/a/x;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    sput-object p0, Lcom/viber/voip/block/i;->a:Ljava/util/Set;

    .line 39
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    sget-object v0, Lcom/viber/voip/block/i;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Lcom/viber/voip/contacts/c/a/a;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/viber/voip/block/i;->d()Lcom/viber/voip/contacts/c/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c()Lcom/viber/voip/a/f;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/viber/voip/block/i;->b:Lcom/viber/voip/a/f;

    return-object v0
.end method

.method private static d()Lcom/viber/voip/contacts/c/a/a;
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/b;->e()Lcom/viber/voip/contacts/c/a/a;

    move-result-object v0

    return-object v0
.end method
