.class public Lcom/viber/service/contacts/sync/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/service/contacts/sync/a/b;


# direct methods
.method public constructor <init>(Lcom/viber/service/contacts/sync/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/viber/service/contacts/sync/a/c;->a:Lcom/viber/service/contacts/sync/a/b;

    .line 18
    return-void
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 36
    packed-switch p1, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/c;->a:Lcom/viber/service/contacts/sync/a/b;

    invoke-interface {v0}, Lcom/viber/service/contacts/sync/a/b;->b()V

    goto :goto_0

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/c;->a:Lcom/viber/service/contacts/sync/a/b;

    invoke-interface {v0}, Lcom/viber/service/contacts/sync/a/b;->c()V

    goto :goto_0

    .line 44
    :pswitch_2
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/c;->a:Lcom/viber/service/contacts/sync/a/b;

    invoke-interface {v0}, Lcom/viber/service/contacts/sync/a/b;->d()V

    goto :goto_0

    .line 47
    :pswitch_3
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/c;->a:Lcom/viber/service/contacts/sync/a/b;

    invoke-interface {v0}, Lcom/viber/service/contacts/sync/a/b;->f()V

    goto :goto_0

    .line 50
    :pswitch_4
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/c;->a:Lcom/viber/service/contacts/sync/a/b;

    invoke-interface {v0}, Lcom/viber/service/contacts/sync/a/b;->e()V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/viber/service/contacts/sync/a/c;->a([I)Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public varargs a([I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 25
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, p1, v1

    .line 26
    invoke-virtual {p0}, Lcom/viber/service/contacts/sync/a/c;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 32
    :goto_1
    return v0

    .line 29
    :cond_0
    invoke-direct {p0, v3}, Lcom/viber/service/contacts/sync/a/c;->a(I)V

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->R()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->X()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
