.class public Lcom/viber/voip/phone/b/b/a;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/util/SparseIntArray;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/phone/b/b/a;->a:Landroid/util/SparseIntArray;

    .line 46
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/a;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x7f0c03b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/a;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const v2, 0x7f0c03b8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/a;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const v2, 0x7f0c03ba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/a;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const v2, 0x7f0c03b9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/a;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x7f0c03bb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/viber/voip/phone/b/b/a;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 34
    new-instance v0, Lcom/viber/voip/phone/b/b/a;

    invoke-direct {v0}, Lcom/viber/voip/phone/b/b/a;-><init>()V

    .line 35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 36
    const-string/jumbo v2, "arg_reason"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    const-string/jumbo v2, "arg_caller"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/b/b/a;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/b/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "arg_caller"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0c03b3

    const/4 v4, 0x1

    .line 55
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/viber/voip/phone/b/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d0135

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/b/a;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "arg_reason"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 60
    if-eq v1, v4, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 61
    :cond_0
    const v1, 0x7f0c03b5

    invoke-virtual {p0, v1}, Lcom/viber/voip/phone/b/b/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 62
    const v1, 0x7f0c03b6

    invoke-virtual {p0, v1}, Lcom/viber/voip/phone/b/b/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    const v1, 0x7f0c03b7

    invoke-virtual {p0, v1}, Lcom/viber/voip/phone/b/b/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/phone/b/b/b;

    invoke-direct {v2, p0}, Lcom/viber/voip/phone/b/b/b;-><init>(Lcom/viber/voip/phone/b/b/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "345"

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 81
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 74
    :cond_1
    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 75
    :cond_2
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 77
    :cond_3
    iget-object v2, p0, Lcom/viber/voip/phone/b/b/a;->a:Landroid/util/SparseIntArray;

    const v3, 0x7f0c03ba

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/viber/voip/phone/b/b/a;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/phone/b/b/a;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
