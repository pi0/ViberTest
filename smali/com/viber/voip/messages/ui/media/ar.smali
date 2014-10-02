.class Lcom/viber/voip/messages/ui/media/ar;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

.field private c:I


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iput p2, p0, Lcom/viber/voip/messages/ui/media/ar;->a:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 347
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPageScrollStateChanged state = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/adapters/h;

    move-result-object v0

    if-nez v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    if-eqz p1, :cond_4

    .line 350
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/adapters/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/h;->a()V

    .line 355
    :goto_1
    if-ne p1, v2, :cond_6

    .line 356
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/media/ar;->c:I

    .line 358
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->c(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/ui/media/ai;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->c(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/ui/media/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ai;->j()V

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->d(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 363
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 364
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/ba;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_5

    move v1, v2

    :goto_3
    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/media/ba;->a(Z)V

    goto :goto_2

    .line 352
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/adapters/h;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/adapters/h;->b(I)V

    goto :goto_1

    .line 364
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 368
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/ui/media/ar;->c:I

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/adapters/h;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/adapters/h;->a(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 372
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->d(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/ba;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/media/ba;->c()V

    .line 375
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;I)V

    goto/16 :goto_0
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageSelected position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iget v1, p0, Lcom/viber/voip/messages/ui/media/ar;->a:I

    invoke-static {v0, p1, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;II)V

    .line 342
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ar;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0, p1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;I)V

    .line 343
    return-void
.end method
