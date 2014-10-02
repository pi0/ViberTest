.class Lcom/viber/voip/settings/ui/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/SettingsHeadersFragment;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/viber/voip/settings/ui/bx;->b:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    iput-object p2, p0, Lcom/viber/voip/settings/ui/bx;->a:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bx;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 165
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bx;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 166
    return-void
.end method
