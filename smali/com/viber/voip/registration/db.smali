.class Lcom/viber/voip/registration/db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/viber/voip/registration/da;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/da;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/viber/voip/registration/db;->b:Lcom/viber/voip/registration/da;

    iput-object p2, p0, Lcom/viber/voip/registration/db;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/viber/voip/registration/db;->b:Lcom/viber/voip/registration/da;

    iget-object v0, v0, Lcom/viber/voip/registration/da;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-virtual {v0}, Lcom/viber/voip/registration/SelectCountryActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/dc;

    .line 236
    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/viber/voip/registration/db;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/dc;->a(Ljava/util/List;)V

    .line 238
    invoke-virtual {v0}, Lcom/viber/voip/registration/dc;->notifyDataSetChanged()V

    .line 240
    :cond_0
    return-void
.end method
