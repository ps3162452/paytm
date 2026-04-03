package com.google.android.gms.common;

import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class AccountPicker {

    public static class AccountChooserOptions {
        private Account zza;
        private boolean zzb;
        private ArrayList zzc;
        private ArrayList zzd;
        private boolean zze;
        private String zzf;
        private Bundle zzg;
        private boolean zzh;
        private int zzi;
        private String zzj;
        private boolean zzk;
        private zza zzl;
        private String zzm;
        private boolean zzn;
        private boolean zzo;

        public static class Builder {
            private Account zza;
            private ArrayList zzb;
            private ArrayList zzc;
            private boolean zzd = false;
            private String zze;
            private Bundle zzf;

            public AccountChooserOptions build() {
                Preconditions.checkArgument(true, NPStringFog.decode(new byte[]{53, 85, 67, 95, 91, 9, 27, 16, 16, 69, 69, 21, 13, 66, 23, 16, 93, 10, 17, 68, 6, 84, 113, 10, 15, 81, 10, 94, 21, 3, 11, 92, 23, 85, 71, 69, 4, 95, 17, 16, 84, 6, 1, 95, 22, 94, 65, 69, 1, 88, 10, 64, 21, 22, 22, 73, 15, 85, 81, 69, 3, 83, 0, 95, 64, 11, 22, 16, 19, 89, 86, 14, 7, 66}, "b0c05e", -2.898048E8f));
                Preconditions.checkArgument(true, NPStringFog.decode(new byte[]{114, 10, 95, 67, 87, 93, 69, 69, 88, 67, 18, 92, 95, 9, 72, 16, 68, 82, 93, 12, 85, 16, 84, 92, 67, 69, 80, 83, 81, 92, 68, 11, 69, 16, 81, 91, 88, 21, 17, 67, 70, 74, 93, 0, 85, 16, 83, 80, 82, 10, 68, 94, 70, 19, 65, 12, 82, 91, 87, 65}, "1e1023", 6.99163525E8d));
                AccountChooserOptions accountChooserOptions = new AccountChooserOptions();
                accountChooserOptions.zzd = this.zzc;
                accountChooserOptions.zzc = this.zzb;
                accountChooserOptions.zze = this.zzd;
                accountChooserOptions.zzl = null;
                accountChooserOptions.zzj = null;
                accountChooserOptions.zzg = this.zzf;
                accountChooserOptions.zza = this.zza;
                accountChooserOptions.zzb = false;
                accountChooserOptions.zzh = false;
                accountChooserOptions.zzm = null;
                accountChooserOptions.zzi = 0;
                accountChooserOptions.zzf = this.zze;
                accountChooserOptions.zzk = false;
                accountChooserOptions.zzn = false;
                accountChooserOptions.zzo = false;
                return accountChooserOptions;
            }

            public Builder setAllowableAccounts(List<Account> list) {
                this.zzb = list == null ? null : new ArrayList(list);
                return this;
            }

            public Builder setAllowableAccountsTypes(List<String> list) {
                this.zzc = list == null ? null : new ArrayList(list);
                return this;
            }

            public Builder setAlwaysShowAccountPicker(boolean z) {
                this.zzd = z;
                return this;
            }

            public Builder setOptionsForAddingAccount(Bundle bundle) {
                this.zzf = bundle;
                return this;
            }

            public Builder setSelectedAccount(Account account) {
                this.zza = account;
                return this;
            }

            public Builder setTitleOverrideText(String str) {
                this.zze = str;
                return this;
            }
        }

        static /* bridge */ /* synthetic */ boolean zzA(AccountChooserOptions accountChooserOptions) {
            boolean z = accountChooserOptions.zzo;
            return false;
        }

        static /* bridge */ /* synthetic */ boolean zzB(AccountChooserOptions accountChooserOptions) {
            boolean z = accountChooserOptions.zzb;
            return false;
        }

        static /* bridge */ /* synthetic */ boolean zzC(AccountChooserOptions accountChooserOptions) {
            boolean z = accountChooserOptions.zzh;
            return false;
        }

        static /* bridge */ /* synthetic */ boolean zzD(AccountChooserOptions accountChooserOptions) {
            boolean z = accountChooserOptions.zzk;
            return false;
        }

        static /* bridge */ /* synthetic */ int zza(AccountChooserOptions accountChooserOptions) {
            int i = accountChooserOptions.zzi;
            return 0;
        }

        static /* bridge */ /* synthetic */ zza zzd(AccountChooserOptions accountChooserOptions) {
            zza zzaVar = accountChooserOptions.zzl;
            return null;
        }

        static /* bridge */ /* synthetic */ String zze(AccountChooserOptions accountChooserOptions) {
            String str = accountChooserOptions.zzj;
            return null;
        }

        static /* bridge */ /* synthetic */ String zzf(AccountChooserOptions accountChooserOptions) {
            String str = accountChooserOptions.zzm;
            return null;
        }

        static /* bridge */ /* synthetic */ boolean zzz(AccountChooserOptions accountChooserOptions) {
            boolean z = accountChooserOptions.zzn;
            return false;
        }
    }

    private AccountPicker() {
    }

    @ResultIgnorabilityUnspecified
    @Deprecated
    public static Intent newChooseAccountIntent(Account account, ArrayList<Account> arrayList, String[] strArr, boolean z, String str, String str2, String[] strArr2, Bundle bundle) {
        Intent intent = new Intent();
        Preconditions.checkArgument(true, NPStringFog.decode(new byte[]{50, 93, 16, 13, 8, 10, 28, 24, 67, 23, 22, 22, 10, 74, 68, 66, 14, 9, 22, 76, 85, 6, 34, 9, 8, 89, 89, 12, 70, 0, 12, 84, 68, 7, 20, 70, 3, 87, 66, 66, 7, 5, 6, 87, 69, 12, 18, 70, 6, 80, 89, 18, 70, 21, 17, 65, 92, 7, 2, 70, 4, 91, 83, 13, 19, 8, 17, 24, 64, 11, 5, 13, 0, 74}, "e80bff", true, true));
        intent.setAction(NPStringFog.decode(new byte[]{7, 88, 12, 74, 3, 95, 11, 80, 13, 1, 74, 81, 10, 83, 19, 11, 13, 84, 74, 80, 12, 23, 74, 83, 11, 90, 12, 11, 10, 30, 5, 84, 2, 11, 17, 94, 16, 25, 34, 44, 43, 127, 55, 114, 62, 37, 39, 115, 43, 98, 47, 48}, "d7add0", -1.08953126E9d));
        intent.setPackage(NPStringFog.decode(new byte[]{84, 93, 11, 31, 85, 12, 88, 85, 10, 84, 28, 2, 89, 86, 20, 94, 91, 7, 25, 85, 11, 66}, "72f12c", 1.2150803E9f));
        intent.putExtra(NPStringFog.decode(new byte[]{5, 85, 14, 10, 66, 4, 6, 85, 7, 36, 86, 6, 11, 76, 12, 17, 70}, "d9be5e", false), arrayList);
        intent.putExtra(NPStringFog.decode(new byte[]{86, 14, 93, 87, 71, 88, 85, 14, 84, 121, 83, 90, 88, 23, 95, 76, 100, 64, 71, 7, 66}, "7b1809", -23733), strArr);
        intent.putExtra(NPStringFog.decode(new byte[]{89, 2, 84, 35, 87, 90, 87, 19, 94, 22, 123, 73, 76, 15, 95, 12, 71}, "8f0b49", true, true), bundle);
        intent.putExtra(NPStringFog.decode(new byte[]{64, 80, 15, 1, 84, 18, 86, 81, 34, 7, 84, 9, 70, 91, 23}, "35cd7f", 4.21847405E8d), account);
        intent.putExtra(NPStringFog.decode(new byte[]{84, 10, 67, 5, 64, 18, 101, 20, 91, 9, 73, 21, 115, 9, 70, 37, 90, 2, 90, 19, 90, 16}, "5f4d9a", true), z);
        intent.putExtra(NPStringFog.decode(new byte[]{6, 80, 65, 7, 64, 88, 18, 65, 91, 11, 92, 101, 7, 77, 70, 43, 68, 84, 16, 71, 91, 0, 87}, "b52d21", 1.0270154E9f), str);
        intent.putExtra(NPStringFog.decode(new byte[]{86, 77, 23, 94, 109, 90, 92, 93, 13, 98, 64, 69, 82}, "78c695", 1.78086807E9d), str2);
        intent.putExtra(NPStringFog.decode(new byte[]{5, 7, 86, 112, 5, 81, 11, 22, 92, 69, 52, 87, 21, 22, 91, 67, 3, 86, 34, 6, 83, 69, 19, 64, 1, 16}, "dc21f2", false), strArr2);
        intent.putExtra(NPStringFog.decode(new byte[]{70, 92, 71, 119, 14, 23, 118, 86, 65, 85, 34, 7, 86, 86, 70, 94, 23}, "5930cd", 8.372411E8f), false);
        intent.putExtra(NPStringFog.decode(new byte[]{90, 67, 82, 75, 75, 81, 81, 80, 99, 81, 92, 85, 80}, "557998", true), 0);
        intent.putExtra(NPStringFog.decode(new byte[]{87, 18, 0, 19, 67, 81, 92, 1, 38, 20, 66, 76, 87, 9, 49, 9, 84, 85, 93}, "8dea18", -26464), 0);
        intent.putExtra(NPStringFog.decode(new byte[]{89, 93, 23, 77, 82, 80, 117, 93, 9, 88, 94, 90, 119, 91, 8, 77, 82, 70}, "12d974", 638874576L), (String) null);
        return intent;
    }

    public static Intent newChooseAccountIntent(AccountChooserOptions accountChooserOptions) {
        Intent intent = new Intent();
        AccountChooserOptions.zzD(accountChooserOptions);
        AccountChooserOptions.zze(accountChooserOptions);
        Preconditions.checkArgument(true, NPStringFog.decode(new byte[]{99, 83, 20, 87, 86, 92, 77, 22, 71, 77, 72, 64, 91, 68, 64, 24, 80, 95, 71, 66, 81, 92, 124, 95, 89, 87, 93, 86, 24, 86, 93, 90, 64, 93, 74, 16, 82, 89, 70, 24, 89, 83, 87, 89, 65, 86, 76, 16, 87, 94, 93, 72, 24, 67, 64, 79, 88, 93, 92, 16, 85, 85, 87, 87, 77, 94, 64, 22, 68, 81, 91, 91, 81, 68}, "464880", 3.01363392E8d));
        AccountChooserOptions.zzd(accountChooserOptions);
        Preconditions.checkArgument(true, NPStringFog.decode(new byte[]{116, 90, 88, 65, 84, 90, 67, 21, 95, 65, 17, 91, 89, 89, 79, 18, 71, 85, 91, 92, 82, 18, 87, 91, 69, 21, 87, 81, 82, 91, 66, 91, 66, 18, 82, 92, 94, 69, 22, 65, 69, 77, 91, 80, 82, 18, 80, 87, 84, 90, 67, 92, 69, 20, 71, 92, 85, 89, 84, 70}, "756214", true));
        AccountChooserOptions.zzB(accountChooserOptions);
        Preconditions.checkArgument(true, NPStringFog.decode(new byte[]{125, 85, 92, 92, 87, 83, 16, 64, 95, 80, 25, 71, 85, 88, 82, 86, 77, 81, 84, 20, 86, 86, 90, 91, 69, 90, 67, 21, 87, 91, 94, 25, 84, 89, 80, 87, 91, 85, 85, 89, 92, 20, 89, 71, 23, 90, 87, 88, 73, 20, 68, 64, 73, 68, 95, 70, 67, 80, 93, 20, 86, 91, 69, 21, 77, 92, 85, 20, 99, 125, 124, 121, 117, 107, 115, 116, 96, 107, 126, 125, 112, 125, 109, 107, 119, 123, 120, 114, 117, 113, 111, 121, 118, 97, 124, 102, 121, 117, 123, 7, 21, 20, 100, 124, 114, 120, 124, 107, 124, 125, 112, 125, 109, 107, 119, 123, 120, 114, 117, 113, 111, 121, 118, 97, 124, 102, 121, 117, 123, 6, 21, 20, 100, 124, 114, 120, 124, 107, 116, 117, 101, 126, 102, 115, 127, 123, 112, 121, 124, 107, 125, 117, 99, 112, 107, 125, 113, 120, 4, 21, 86, 70, 16, 96, 127, 112, 116, 113, 111, 112, 118, 108, 102, 122, 121, 115, 127, 97, 102, 115, 127, 123, 112, 121, 124, 107, 125, 117, 99, 112, 107, 125, 113, 120, 4, 21, 77, 92, 85, 89, 82, 70}, "047594", -6587));
        AccountChooserOptions.zzD(accountChooserOptions);
        intent.setAction(NPStringFog.decode(new byte[]{85, 86, 11, 75, 4, 12, 89, 94, 10, 0, 77, 2, 88, 93, 20, 10, 10, 7, 24, 94, 11, 22, 77, 0, 89, 84, 11, 10, 13, 77, 87, 90, 5, 10, 22, 13, 66, 23, 37, 45, 44, 44, 101, 124, 57, 36, 32, 32, 121, 108, 40, 49}, "69fecc", 1.4689564E9f));
        intent.setPackage(NPStringFog.decode(new byte[]{91, 88, 9, 25, 85, 95, 87, 80, 8, 82, 28, 81, 86, 83, 22, 88, 91, 84, 22, 80, 9, 68}, "87d720", 12281));
        intent.putExtra(NPStringFog.decode(new byte[]{80, 8, 14, 9, 22, 89, 83, 8, 7, 39, 2, 91, 94, 17, 12, 18, 18}, "1dbfa8", -1.1575082E9f), accountChooserOptions.zzc);
        if (accountChooserOptions.zzd != null) {
            intent.putExtra(NPStringFog.decode(new byte[]{89, 10, 15, 90, 65, 86, 90, 10, 6, 116, 85, 84, 87, 19, 13, 65, 98, 78, 72, 3, 16}, "8fc567", 2.43241265E8d), (String[]) accountChooserOptions.zzd.toArray(new String[0]));
        }
        intent.putExtra(NPStringFog.decode(new byte[]{85, 0, 93, 112, 1, 6, 91, 17, 87, 69, 45, 21, 64, 13, 86, 95, 17}, "4d91be", -6.249573E8f), accountChooserOptions.zzg);
        intent.putExtra(NPStringFog.decode(new byte[]{75, 82, 85, 6, 91, 69, 93, 83, 120, 0, 91, 94, 77, 89, 77}, "879c81", -23420), accountChooserOptions.zza);
        AccountChooserOptions.zzB(accountChooserOptions);
        intent.putExtra(NPStringFog.decode(new byte[]{70, 86, 88, 80, 90, 22, 80, 87, 117, 86, 90, 13, 64, 93, 64, 124, 74, 44, 90, 71, 119, 89, 80, 1, 94, 82, 86, 89, 92}, "53459b", false, false), false);
        intent.putExtra(NPStringFog.decode(new byte[]{87, 10, 71, 84, 29, 22, 102, 20, 95, 88, 20, 17, 112, 9, 66, 116, 7, 6, 89, 19, 94, 65}, "6f05de", true), accountChooserOptions.zze);
        intent.putExtra(NPStringFog.decode(new byte[]{1, 92, 65, 6, 71, 11, 21, 77, 91, 10, 91, 54, 0, 65, 70, 42, 67, 7, 23, 75, 91, 1, 80}, "e92e5b", -605086059L), accountChooserOptions.zzf);
        AccountChooserOptions.zzC(accountChooserOptions);
        intent.putExtra(NPStringFog.decode(new byte[]{69, 6, 64, 115, 15, 68, 117, 12, 70, 81, 35, 84, 85, 12, 65, 90, 22}, "6c44b7", true), false);
        AccountChooserOptions.zzf(accountChooserOptions);
        intent.putExtra(NPStringFog.decode(new byte[]{65, 80, 5, 10, 119, 90, 90, 80, 10, 18, 100, 87, 80, 94, 5, 1, 81}, "35df46", -11378), (String) null);
        AccountChooserOptions.zza(accountChooserOptions);
        intent.putExtra(NPStringFog.decode(new byte[]{93, 71, 82, 68, 64, 89, 86, 84, 99, 94, 87, 93, 87}, "217620", 32585), 0);
        AccountChooserOptions.zzD(accountChooserOptions);
        intent.putExtra(NPStringFog.decode(new byte[]{9, 21, 82, 64, 16, 95, 2, 6, 116, 71, 17, 66, 9, 14, 99, 90, 7, 91, 3}, "fc72b6", true, false), 0);
        AccountChooserOptions.zze(accountChooserOptions);
        intent.putExtra(NPStringFog.decode(new byte[]{91, 14, 71, 23, 3, 6, 119, 14, 89, 2, 15, 12, 117, 8, 88, 23, 3, 16}, "3a4cfb", true), (String) null);
        Bundle bundle = new Bundle();
        AccountChooserOptions.zzD(accountChooserOptions);
        AccountChooserOptions.zzd(accountChooserOptions);
        AccountChooserOptions.zzz(accountChooserOptions);
        AccountChooserOptions.zzA(accountChooserOptions);
        if (!bundle.isEmpty()) {
            intent.putExtra(NPStringFog.decode(new byte[]{87, 15, 23, 16, 70, 105, 65, 7, 23, 23, 75, 105, 94, 22, 17, 10, 93, 88, 66, 57, 7, 22, 92, 82, 93, 3}, "1fec26", 11560), bundle);
        }
        return intent;
    }
}
