package gen_model

import (
	"fmt"
	"log"

	"github.com/lujingwei002/gen_server"
	gen "github.com/lujingwei002/gen_server/gen/gen_model"
	"github.com/spf13/cobra"
	"github.com/spf13/viper"
)

var (
	respositoryVersion string
)

var Cmd = &cobra.Command{
	Use:   "gen_model",
	Short: "gen model code",
	RunE: func(cmd *cobra.Command, args []string) error {
		var c gen_server.Config
		err := viper.Unmarshal(&c)
		if err != nil {
			log.Fatalf("unable to decode into struct, %v", err)
		}
		fmt.Printf("read config %#v\n", c.GenModel)
		if err := gen.Gen(c.GenModel); err != nil {
			return err
		}
		return nil
	},
}

func init() {

}
