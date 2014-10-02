.class public Lcom/viber/voip/contacts/c/f/b/h;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:[Lcom/viber/jni/PhoneControllerDelegateAdapter;

.field private c:I


# direct methods
.method public varargs constructor <init>(Landroid/os/Handler;[Lcom/viber/jni/PhoneControllerDelegateAdapter;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/contacts/c/f/b/h;->c:I

    .line 22
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/h;->a:Landroid/os/Handler;

    .line 23
    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/b/h;->b:[Lcom/viber/jni/PhoneControllerDelegateAdapter;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/b/h;)[Lcom/viber/jni/PhoneControllerDelegateAdapter;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/h;->b:[Lcom/viber/jni/PhoneControllerDelegateAdapter;

    return-object v0
.end method


# virtual methods
.method public onAddressBook(IIZZI[Lcom/viber/jni/CAddressBookEntry;)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v8, p0, Lcom/viber/voip/contacts/c/f/b/h;->a:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/contacts/c/f/b/k;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/contacts/c/f/b/k;-><init>(Lcom/viber/voip/contacts/c/f/b/h;IIZZI[Lcom/viber/jni/CAddressBookEntry;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public onRecanonize(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/h;->a:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/contacts/c/f/b/o;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/contacts/c/f/b/o;-><init>(Lcom/viber/voip/contacts/c/f/b/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method public onRegisteredNumbers(ZZLjava/util/Map;IZLjava/lang/String;Ljava/lang/String;II)Z
    .locals 12
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
            "(ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v11, p0, Lcom/viber/voip/contacts/c/f/b/h;->a:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/contacts/c/f/b/j;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/viber/voip/contacts/c/f/b/j;-><init>(Lcom/viber/voip/contacts/c/f/b/h;ZZLjava/util/Map;IZLjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public onServiceStateChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/viber/voip/contacts/c/f/b/h;->c:I

    if-ne v0, p1, :cond_0

    .line 40
    :goto_0
    return-void

    .line 29
    :cond_0
    iput p1, p0, Lcom/viber/voip/contacts/c/f/b/h;->c:I

    .line 31
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/h;->a:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/contacts/c/f/b/i;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/contacts/c/f/b/i;-><init>(Lcom/viber/voip/contacts/c/f/b/h;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onShareAddressBook()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/h;->a:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/contacts/c/f/b/m;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/c/f/b/m;-><init>(Lcom/viber/voip/contacts/c/f/b/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

.method public onShareAddressBookReply(ZII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/h;->a:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/contacts/c/f/b/n;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/viber/voip/contacts/c/f/b/n;-><init>(Lcom/viber/voip/contacts/c/f/b/h;ZII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method public onUnregisteredNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/h;->a:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/contacts/c/f/b/l;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/contacts/c/f/b/l;-><init>(Lcom/viber/voip/contacts/c/f/b/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    const/4 v0, 0x1

    return v0
.end method
