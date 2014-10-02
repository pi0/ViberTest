.class public Lcom/viber/voip/util/at;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/viber/voip/util/at;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/util/at;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-boolean v0, Lcom/viber/voip/util/at;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;IILcom/viber/voip/util/az;Ljava/lang/Runnable;IZ)Landroid/content/DialogInterface;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IIZ)Landroid/content/DialogInterface;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;IILcom/viber/voip/util/az;Ljava/lang/Runnable;Z)Landroid/content/DialogInterface;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    const v5, 0x7f0c02b5

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move v7, v6

    .line 123
    invoke-static/range {v0 .. v7}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IIZ)Landroid/content/DialogInterface;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Landroid/os/IBinder;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IIZ)Landroid/content/DialogInterface;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {v6, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 145
    const/4 v0, 0x1

    new-array v5, v0, [Landroid/widget/CheckBox;

    .line 146
    new-instance v0, Lcom/viber/voip/util/aw;

    move-object v1, p0

    move-object v2, p2

    move v3, p5

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/util/aw;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ILcom/viber/voip/util/az;[Landroid/widget/CheckBox;)V

    invoke-virtual {v6, p5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    new-instance v0, Lcom/viber/voip/util/ax;

    invoke-direct {v0, p0, p2, p6, p4}, Lcom/viber/voip/util/ax;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/Runnable;)V

    .line 177
    if-gtz p6, :cond_0

    const p6, 0x7f0c02b6

    :cond_0
    invoke-virtual {v6, p6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 178
    new-instance v0, Lcom/viber/voip/util/ay;

    invoke-direct {v0, p0, p2, p4}, Lcom/viber/voip/util/ay;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 191
    if-eqz p7, :cond_2

    .line 192
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030092

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 193
    const/4 v3, 0x0

    const v0, 0x7f070244

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v5, v3

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v0, v3, :cond_1

    .line 195
    const v0, 0x7f070245

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    :cond_1
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 200
    :cond_2
    if-lez p1, :cond_3

    .line 201
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 207
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 211
    :goto_1
    return-object v0

    .line 203
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IZ)Landroid/content/DialogInterface;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IIZ)Landroid/content/DialogInterface;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/os/IBinder;IILjava/lang/Runnable;)Landroid/content/DialogInterface;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    const v4, 0x7f0c02b5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;Z)Landroid/content/DialogInterface;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;Z)Landroid/content/DialogInterface;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0d0135

    const/high16 v3, 0x2

    .line 68
    if-nez p1, :cond_3

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->isOnForeground()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 73
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 77
    :cond_0
    if-eqz p3, :cond_1

    .line 78
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 80
    :cond_1
    invoke-virtual {v1, p6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 81
    new-instance v0, Lcom/viber/voip/util/au;

    invoke-direct {v0, p0, p3, p4, p5}, Lcom/viber/voip/util/au;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;)V

    invoke-virtual {v1, p4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    new-instance v0, Lcom/viber/voip/util/av;

    invoke-direct {v0, p0, p3}, Lcom/viber/voip/util/av;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 101
    if-eqz p1, :cond_4

    .line 102
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 103
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 104
    iput-object p1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 105
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 111
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 112
    return-object v0

    .line 71
    :cond_3
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 106
    :cond_4
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->isOnForeground()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 108
    const/16 v2, 0x7d7

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 109
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;Z)Landroid/content/DialogInterface;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;Z)Landroid/content/DialogInterface;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/content/DialogInterface;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/content/DialogInterface;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/content/DialogInterface;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    const v3, 0x7f0c02b5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;Z)Landroid/content/DialogInterface;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 264
    if-eqz p1, :cond_0

    .line 265
    const-string/jumbo v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 268
    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-lez v1, :cond_1

    .line 269
    const-string/jumbo v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 272
    :cond_1
    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 392
    const-string/jumbo v0, ""

    .line 394
    sparse-switch p0, :sswitch_data_0

    .line 439
    :goto_0
    return-object v0

    .line 396
    :sswitch_0
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Ok"

    goto :goto_0

    .line 399
    :sswitch_1
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Cancel"

    goto :goto_0

    .line 402
    :sswitch_2
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Edit"

    goto :goto_0

    .line 405
    :sswitch_3
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "No Thanks"

    goto :goto_0

    .line 408
    :sswitch_4
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Try it"

    goto :goto_0

    .line 411
    :sswitch_5
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Continue"

    goto :goto_0

    .line 414
    :sswitch_6
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Add to contacts"

    goto :goto_0

    .line 417
    :sswitch_7
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Yes"

    goto :goto_0

    .line 420
    :sswitch_8
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Invite"

    goto :goto_0

    .line 423
    :sswitch_9
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Delete"

    goto :goto_0

    .line 426
    :sswitch_a
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Download"

    goto :goto_0

    .line 429
    :sswitch_b
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Remove"

    goto :goto_0

    .line 432
    :sswitch_c
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Close"

    goto :goto_0

    .line 435
    :sswitch_d
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Retry"

    goto :goto_0

    .line 394
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c02ae -> :sswitch_5
        0x7f0c02b5 -> :sswitch_0
        0x7f0c02b6 -> :sswitch_1
        0x7f0c0321 -> :sswitch_2
        0x7f0c0333 -> :sswitch_d
        0x7f0c0334 -> :sswitch_c
        0x7f0c034a -> :sswitch_9
        0x7f0c0377 -> :sswitch_7
        0x7f0c03b6 -> :sswitch_3
        0x7f0c03b7 -> :sswitch_4
        0x7f0c0461 -> :sswitch_6
        0x7f0c0486 -> :sswitch_b
        0x7f0c04a0 -> :sswitch_8
        0x7f0c04e7 -> :sswitch_a
    .end sparse-switch
.end method

.method private static a(Landroid/app/AlertDialog$Builder;Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    if-lez p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/app/AlertDialog$Builder;Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    .line 258
    return-void

    .line 256
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/app/AlertDialog$Builder;Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-virtual {p0, p5, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    if-nez p6, :cond_0

    const p6, 0x7f0c02b6

    :cond_0
    invoke-virtual {p0, p6, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 244
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 245
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 250
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 251
    return-void

    .line 248
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 234
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 235
    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/app/AlertDialog$Builder;Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    .line 236
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/viber/voip/util/at;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/viber/voip/util/at;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 227
    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/app/AlertDialog$Builder;Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    .line 228
    return-void
.end method

.method public static a(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 276
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/viber/voip/util/at;->a(ZLandroid/content/DialogInterface;)V

    .line 277
    return-void
.end method

.method private static a(ZLandroid/content/DialogInterface;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 284
    if-eqz p1, :cond_1

    .line 285
    instance-of v0, p1, Landroid/app/Dialog;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    if-eqz p0, :cond_2

    .line 288
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0332

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "202"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->c(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c038e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "201"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->c(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 351
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c03a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 352
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "203"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->c(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 353
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0380

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 354
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "300"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->c(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 355
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c037a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 356
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "302"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->c(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto/16 :goto_0

    .line 357
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0385

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 358
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "327"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->c(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto/16 :goto_0

    .line 359
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c03d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 360
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "343"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->c(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto/16 :goto_0

    .line 361
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c03d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 362
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "330"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->c(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto/16 :goto_0

    .line 363
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0326

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 364
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "336"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->c(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto/16 :goto_0

    .line 365
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c03b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c03b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    :cond_a
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "345"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->c(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto/16 :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 375
    invoke-static {p2}, Lcom/viber/voip/util/at;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0456

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "306"

    invoke-virtual {v2, v3, v0}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    :cond_2
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "345"

    invoke-virtual {v2, v3, v0}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/viber/voip/util/at;->a(ZLandroid/content/DialogInterface;)V

    .line 281
    return-void
.end method
