.class Lcom/viber/voip/messages/ui/view/f;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/view/c;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/view/c;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/viber/voip/messages/ui/view/f;->a:Lcom/viber/voip/messages/ui/view/c;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/view/c;Lcom/viber/voip/messages/ui/view/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/view/f;-><init>(Lcom/viber/voip/messages/ui/view/c;)V

    return-void
.end method

.method private b(I)I
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/f;->a:Lcom/viber/voip/messages/ui/view/c;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/view/c;->a(Lcom/viber/voip/messages/ui/view/c;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/f;->a:Lcom/viber/voip/messages/ui/view/c;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/view/c;->a(Lcom/viber/voip/messages/ui/view/c;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/f;->a:Lcom/viber/voip/messages/ui/view/c;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/view/c;->a(Lcom/viber/voip/messages/ui/view/c;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/f;->a:Lcom/viber/voip/messages/ui/view/c;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/view/c;->a(Lcom/viber/voip/messages/ui/view/c;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/view/f;->a(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/view/f;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/view/f;->a(I)Landroid/view/View;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    .line 226
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 236
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/view/f;->b(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 238
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 240
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 242
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 244
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 246
    :pswitch_4
    iget-object v1, p0, Lcom/viber/voip/messages/ui/view/f;->a:Lcom/viber/voip/messages/ui/view/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/view/c;->a(Lcom/viber/voip/messages/ui/view/c;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/view/f;->a:Lcom/viber/voip/messages/ui/view/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/view/c;->a(Lcom/viber/voip/messages/ui/view/c;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/f;->a:Lcom/viber/voip/messages/ui/view/c;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/view/f;->a:Lcom/viber/voip/messages/ui/view/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/view/c;->b(Lcom/viber/voip/messages/ui/view/c;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/view/f;->getItemViewType(I)I

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/view/f;->a:Lcom/viber/voip/messages/ui/view/c;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/view/c;->a(Lcom/viber/voip/messages/ui/view/c;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v3

    invoke-static {v0, v1, p2, v2, v3}, Lcom/viber/voip/messages/ui/view/c;->a(Lcom/viber/voip/messages/ui/view/c;Landroid/view/LayoutInflater;Landroid/view/View;ILcom/viber/voip/messages/conversation/h;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x5

    return v0
.end method
