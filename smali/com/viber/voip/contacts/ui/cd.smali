.class Lcom/viber/voip/contacts/ui/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ag;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Z

.field final synthetic e:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic f:Lcom/viber/voip/contacts/ui/cb;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/cb;Ljava/util/Map;Ljava/util/Map;Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/cd;->f:Lcom/viber/voip/contacts/ui/cb;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/cd;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/viber/voip/contacts/ui/cd;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/viber/voip/contacts/ui/cd;->c:Landroid/app/Activity;

    iput-boolean p5, p0, Lcom/viber/voip/contacts/ui/cd;->d:Z

    iput-object p6, p0, Lcom/viber/voip/contacts/ui/cd;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 341
    .line 342
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cd;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cd;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cd;->f:Lcom/viber/voip/contacts/ui/cb;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cd;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/cd;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/cd;->a:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/viber/voip/contacts/ui/cd;->d:Z

    iget-object v5, p0, Lcom/viber/voip/contacts/ui/cd;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/cb;->a(Lcom/viber/voip/contacts/ui/cb;Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;ZLandroid/content/DialogInterface$OnClickListener;)V

    .line 348
    :cond_0
    return-void
.end method
