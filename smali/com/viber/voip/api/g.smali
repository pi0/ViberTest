.class Lcom/viber/voip/api/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/api/ViberUrlHandlerActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/ViberUrlHandlerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/viber/voip/api/g;->a:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/viber/voip/api/g;->a:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-virtual {v0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->finish()V

    .line 218
    return-void
.end method
