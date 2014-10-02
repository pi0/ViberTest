.class Lcom/viber/voip/viberout/ui/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/ui/ViberOutDialogs;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;)V
    .locals 0
    .parameter

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/aq;->a:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/aq;->a:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->finish()V

    .line 1075
    return-void
.end method
