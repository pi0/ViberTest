.class Lcom/viber/voip/user/UsageStatisticsActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/UsageStatisticsActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/UsageStatisticsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/viber/voip/user/UsageStatisticsActivity$2;->this$0:Lcom/viber/voip/user/UsageStatisticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 103
    return-void
.end method
